# frozen_string_literal: true

require "spec_helper"

RSpec.describe Checkbiz::Auth::Bearer do
  subject(:bearer) { described_class.new(access_token) }

  let(:access_token) { instance_double(Checkbiz::Auth::AccessToken, value: "abc123", invalidate: nil) }

  def response(status, request_headers: {}, body: "")
    Faraday::Response.new(Faraday::Env.from(status:, request_headers:, body:))
  end

  describe "#apply" do
    it "sets the Authorization header" do
      request = Faraday::Request.create(:get) { |r| r.headers = {} }

      bearer.apply(request)

      expect(request.headers["Authorization"]).to eq("Bearer abc123")
    end
  end

  describe "#on_rejected" do
    it "invalidates the rejected token on a 401, so the retry fetches a new one" do
      bearer.on_rejected(response(401, request_headers: {"Authorization" => "Bearer abc123"}))

      expect(access_token).to have_received(:invalidate).with("abc123")
    end

    it "raises RequestError on any other status" do
      rejected = response(404, body: {"errorMessages" => ["No test data for requested ID '190001012384'."]})

      expect { bearer.on_rejected(rejected) }.to raise_error(
        Checkbiz::RequestError, "Request failed: 404 - No test data for requested ID '190001012384'."
      )
      expect(access_token).not_to have_received(:invalidate)
    end
  end
end
