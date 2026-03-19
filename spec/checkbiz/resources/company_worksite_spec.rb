# frozen_string_literal: true

require "spec_helper"

RSpec.describe Checkbiz::CompanyWorksite do
  let(:vcr_dir) { "company_worksite" }

  describe ".call" do
    it "raises RequestError (not authorized for this endpoint)" do
      expect {
        VCR.use_cassette("#{vcr_dir}/call") do
          described_class.call(cfar: "12345678", package: "bas")
        end
      }.to raise_error(RestEasy::RequestError)
    end
  end
end
