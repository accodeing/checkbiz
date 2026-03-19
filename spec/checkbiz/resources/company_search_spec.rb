# frozen_string_literal: true

require "spec_helper"

RSpec.describe Checkbiz::CompanySearch do
  let(:vcr_dir) { "company_search" }

  describe ".call" do
    let(:result) do
      VCR.use_cassette("#{vcr_dir}/call") do
        described_class.call(who: "Test", max_nr_records: 5, package: "sokforetag")
      end
    end

    it "returns an instance of the resource" do
      expect(result).to be_a(described_class)
    end
  end
end
