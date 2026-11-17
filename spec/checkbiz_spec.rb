# frozen_string_literal: true

require "spec_helper"

RSpec.describe Checkbiz do
  let(:vcr_dir) { "checkbiz" }

  describe ".ping" do
    it "returns true" do
      expect(VCR.use_cassette("#{vcr_dir}/ping") { described_class.ping }).to be(true)
    end

    it "returns false for any other answer" do
      described_class.config.authentication = instance_double(Checkbiz::Auth::Bearer, apply: nil, on_rejected: nil)
      stub_request(:get, "https://data.checkbiz.se/v2/ping")
        .to_return(status: 200, headers: {"Content-Type" => "application/json"}, body: '{"status":"OK"}')

      expect(described_class.ping).to be(false)
    end
  end

  describe "the connection" do
    it "times out instead of waiting on a stalled Checkbiz" do
      expect(described_class.faraday_connection.options).to have_attributes(
        open_timeout: Checkbiz::OPEN_TIMEOUT_IN_SECONDS, timeout: Checkbiz::TIMEOUT_IN_SECONDS
      )
    end
  end

  describe "error translation" do
    let(:ping_url) { "https://data.checkbiz.se/v2/ping" }

    before do
      described_class.config.authentication = instance_double(Checkbiz::Auth::Bearer, apply: nil, on_rejected: nil)
      allow(Kernel).to receive(:sleep)
    end

    it "raises RequestError once the retries are used up" do
      stub_request(:get, ping_url).to_return(status: 503, body: "Service Unavailable")

      expect { described_class.ping }.to raise_error(Checkbiz::RequestError, "Request failed: 503 - Service Unavailable")
    end

    it "raises AuthenticationError when every retry gets a 401" do
      stub_request(:get, ping_url).to_return(status: 401, body: "Invalid authentication\n")

      expect { described_class.ping }.to raise_error(Checkbiz::AuthenticationError)
    end

    it "raises ConnectionError when Checkbiz can't be reached" do
      stub_request(:get, ping_url).to_timeout

      expect { described_class.ping }.to raise_error(Checkbiz::ConnectionError, /Could not reach Checkbiz/)
    end
  end

  describe "transient errors" do
    let(:ping_url) { "https://data.checkbiz.se/v2/ping" }
    let(:bearer) { instance_double(Checkbiz::Auth::Bearer, apply: nil, on_rejected: nil) }

    before do
      described_class.config.authentication = bearer
      allow(Kernel).to receive(:sleep)
    end

    it "are retried without involving the authentication" do
      stub_request(:get, ping_url).to_return({status: 503}, {status: 200, body: "OK\n"})

      expect(described_class.ping).to be(true)
      expect(bearer).not_to have_received(:on_rejected)
    end

    it "are not retried for a lookup, since it is a POST" do
      access_token = instance_double(Checkbiz::Auth::AccessToken, value: "abc123", invalidate: nil)
      described_class.config.authentication = Checkbiz::Auth::Bearer.new(access_token)
      lookup = stub_request(:post, "https://data.checkbiz.se/v2/person/base").to_return(status: 503)

      expect { Checkbiz::Person.find("198510102398") }.to raise_error(Checkbiz::RequestError, "Request failed: 503")
      expect(lookup).to have_been_requested.once
    end
  end
end
