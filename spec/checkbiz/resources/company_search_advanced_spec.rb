# frozen_string_literal: true

require "spec_helper"

RSpec.describe Checkbiz::CompanySearchAdvanced do
  let(:vcr_dir) { "company_search_advanced" }

  describe ".call" do
    it "raises RequestError (not authorized for this endpoint)" do
      expect {
        VCR.use_cassette("#{vcr_dir}/call") do
          described_class.call(company_name: "Test", max_nr_records: 5, package: "bas")
        end
      }.to raise_error(RestEasy::RequestError)
    end
  end
end
