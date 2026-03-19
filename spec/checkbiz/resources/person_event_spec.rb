# frozen_string_literal: true

require "spec_helper"

RSpec.describe Checkbiz::PersonEvent do
  let(:vcr_dir) { "person_event" }

  describe ".call" do
    it "raises RequestError (not authorized for this endpoint)" do
      expect {
        VCR.use_cassette("#{vcr_dir}/call") do
          described_class.call(start_date: "2024-01-01", end_date: "2024-01-31", package: "bas")
        end
      }.to raise_error(RestEasy::RequestError)
    end
  end
end
