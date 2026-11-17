# frozen_string_literal: true

require "spec_helper"

RSpec.describe Checkbiz::RequestError do
  subject(:error) { described_class.new(response) }

  let(:response) { instance_double(Faraday::Response, status:, body:) }

  context "with a JSON body" do
    let(:status) { 400 }
    let(:body) { {"errorMessages" => ["The string '123' is not a valid personal number."]} }

    it "uses the error message" do
      expect(error.message).to eq("Request failed: 400 - The string '123' is not a valid personal number.")
    end

    it "keeps the response" do
      expect(error.response).to be(response)
    end
  end

  context "with a plain text body" do
    let(:status) { 403 }
    let(:body) { "Forbidden\n" }

    it "uses the text" do
      expect(error.message).to eq("Request failed: 403 - Forbidden")
    end
  end

  context "with an empty body" do
    let(:status) { 500 }
    let(:body) { "" }

    it "gives only the status" do
      expect(error.message).to eq("Request failed: 500")
    end
  end

  context "with error messages that aren't strings" do
    let(:status) { 400 }
    let(:body) { {"errorMessages" => [nil, 42]} }

    it "still builds a message" do
      expect(error.message).to eq("Request failed: 400 - 42")
    end
  end

  context "with a JSON body in another shape" do
    let(:status) { 500 }
    let(:body) { {"error" => "Internal Server Error"} }

    it "shows the body as JSON" do
      expect(error.message).to eq('Request failed: 500 - {"error":"Internal Server Error"}')
    end
  end

  context "with a JSON body that hasn't been parsed" do
    let(:status) { 400 }
    let(:body) { '{"errorMessages":["The string \'123\' is not a valid personal number."]}' }

    it "uses the error message" do
      expect(error.message).to eq("Request failed: 400 - The string '123' is not a valid personal number.")
    end
  end

  describe ".for" do
    subject(:error) { described_class.for(response) }

    let(:body) { "" }

    context "with a 401" do
      let(:status) { 401 }

      it { is_expected.to be_a(Checkbiz::AuthenticationError) }
    end

    context "with any other status" do
      let(:status) { 403 }

      it { is_expected.to be_an_instance_of(described_class) }
    end
  end
end
