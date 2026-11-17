# frozen_string_literal: true

require "spec_helper"

RSpec.describe Checkbiz::Auth::AccessToken do
  subject(:access_token) { described_class.new(username:, password:) }

  let(:vcr_dir) { "authentication" }
  let(:token_url) { "https://data.checkbiz.se/v2/authentication/token" }

  shared_context "with a fetched token" do
    subject(:access_token) { described_class.new(username:, password:, clock: -> { @now }) }

    let(:username) { ENV.fetch("CHECKBIZ_USERNAME") }
    let(:password) { ENV.fetch("CHECKBIZ_PASSWORD") }
    let(:token_request) { a_request(:post, token_url) }
    let(:seconds_until_renewal) { 3600 - described_class::EXPIRY_MARGIN_IN_SECONDS }

    around { |example| VCR.use_cassette("#{vcr_dir}/renewal") { example.run } }

    before do
      @now = 0
      access_token.value
    end

    def advance_clock_by(seconds)
      @now += seconds
    end
  end

  describe "#value" do
    context "with valid credentials" do
      let(:username) { ENV.fetch("CHECKBIZ_USERNAME") }
      let(:password) { ENV.fetch("CHECKBIZ_PASSWORD") }

      it "fetches a token" do
        value = VCR.use_cassette("#{vcr_dir}/token") { access_token.value }

        expect(value).to be_a(String).and(satisfy { |v| !v.empty? })
      end
    end

    context "with invalid credentials" do
      let(:username) { "foo" }
      let(:password) { "bar" }

      it "raises AuthenticationError" do
        expect {
          VCR.use_cassette("#{vcr_dir}/invalid_credentials") { access_token.value }
        }.to raise_error(Checkbiz::AuthenticationError, "Request failed: 401 - Invalid authentication")
      end
    end

    context "when the token endpoint answers with something other than a token" do
      let(:username) { "foo" }
      let(:password) { "bar" }

      it "raises Error, since the credentials weren't rejected" do
        stub_request(:post, token_url).to_return(body: "<html>Down for maintenance</html>")

        expect { access_token.value }.to raise_error(
          Checkbiz::Error, "Unexpected response from Checkbiz: <html>Down for maintenance</html>"
        ) { |error| expect(error).not_to be_a(Checkbiz::RequestError) }
      end

      it "raises Error for an empty answer" do
        stub_request(:post, token_url).to_return(status: 204)

        expect { access_token.value }.to raise_error(Checkbiz::Error, /Unexpected response from Checkbiz/)
      end
    end

    context "when the token endpoint fails for another reason than the credentials" do
      let(:username) { "foo" }
      let(:password) { "bar" }

      before { stub_request(:post, token_url).to_return(status: 503, body: "Service Unavailable") }

      it "raises RequestError, not AuthenticationError" do
        expect { access_token.value }.to raise_error(Checkbiz::RequestError, "Request failed: 503 - Service Unavailable") { |error|
          expect(error).not_to be_a(Checkbiz::AuthenticationError)
        }
      end
    end

    context "when Checkbiz can't be reached" do
      let(:username) { "foo" }
      let(:password) { "bar" }

      before { stub_request(:post, token_url).to_timeout }

      it "raises ConnectionError" do
        expect { access_token.value }.to raise_error(Checkbiz::ConnectionError, /Could not reach Checkbiz/)
      end
    end

    context "with a fetched token" do
      include_context "with a fetched token"

      it "reuses it until shortly before it expires" do
        advance_clock_by(seconds_until_renewal - 1)
        access_token.value

        expect(token_request).to have_been_made.once
      end

      it "fetches a new one when it is about to expire" do
        advance_clock_by(seconds_until_renewal)
        access_token.value

        expect(token_request).to have_been_made.twice
      end
    end
  end

  describe "#invalidate" do
    include_context "with a fetched token"

    it "drops the current token, so the next value is a new one" do
      access_token.invalidate(access_token.value)
      access_token.value

      expect(token_request).to have_been_made.twice
    end

    it "keeps the token when the rejected one has already been replaced" do
      access_token.invalidate("an-older-token")
      access_token.value

      expect(token_request).to have_been_made.once
    end
  end
end
