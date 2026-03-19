# frozen_string_literal: true

require "spec_helper"

RSpec.describe Checkbiz::CompanyAnnualReport do
  let(:vcr_dir) { "company_annual_report" }

  describe ".call" do
    it "raises RequestError (not authorized for this endpoint)" do
      expect {
        VCR.use_cassette("#{vcr_dir}/call") do
          described_class.call(ref_no: "1", package: "bas")
        end
      }.to raise_error(RestEasy::RequestError)
    end
  end
end
