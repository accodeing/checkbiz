# frozen_string_literal: true

require "spec_helper"

RSpec.describe Checkbiz::PersonInformation do
  let(:vcr_dir) { "person_information" }

  describe ".call" do
    let(:result) do
      VCR.use_cassette("#{vcr_dir}/call") do
        described_class.call(ssn: "194907299289", package: "personadress")
      end
    end

    it "returns an instance of the resource" do
      expect(result).to be_a(described_class)
    end

    it "has response_code in metadata" do
      expect(result.meta.response_code).not_to be_nil
    end
  end
end
