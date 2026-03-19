# frozen_string_literal: true

require "spec_helper"

RSpec.describe Checkbiz::LookupPhoneNo do
  let(:vcr_dir) { "lookup_phone_no" }

  describe ".call" do
    it "raises RequestError (not authorized for this endpoint)" do
      expect {
        VCR.use_cassette("#{vcr_dir}/call") do
          described_class.call(phone_number: "0812345678", package: "bas")
        end
      }.to raise_error(RestEasy::RequestError)
    end
  end
end
