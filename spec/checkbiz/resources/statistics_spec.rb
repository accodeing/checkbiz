# frozen_string_literal: true

require "spec_helper"

RSpec.describe Checkbiz::Statistics do
  let(:vcr_dir) { "statistics" }

  describe ".call" do
    it "raises RequestError (not authorized for this endpoint)" do
      expect {
        VCR.use_cassette("#{vcr_dir}/call") do
          described_class.call(region: "01", package: "bas")
        end
      }.to raise_error(RestEasy::RequestError)
    end
  end
end
