# frozen_string_literal: true

require "spec_helper"

RSpec.describe Checkbiz::CompanyCreditTemplate do
  let(:vcr_dir) { "company_credit_template" }

  describe ".call" do
    it "raises RequestError (not authorized for this endpoint)" do
      expect {
        VCR.use_cassette("#{vcr_dir}/call") do
          described_class.call(organization_number: "5564866286", package: "bas")
        end
      }.to raise_error(RestEasy::RequestError)
    end
  end
end
