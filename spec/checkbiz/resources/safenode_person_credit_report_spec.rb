# frozen_string_literal: true

require "spec_helper"

RSpec.describe Checkbiz::SafenodePersonCreditReport do
  let(:vcr_dir) { "safenode_person_credit_report" }

  describe ".call" do
    it "raises RequestError (not authorized for this endpoint)" do
      expect {
        VCR.use_cassette("#{vcr_dir}/call") do
          described_class.call(ssn: "194907299289", package: "bas")
        end
      }.to raise_error(RestEasy::RequestError)
    end
  end
end
