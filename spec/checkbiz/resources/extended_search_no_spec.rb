# frozen_string_literal: true

require "spec_helper"

RSpec.describe Checkbiz::ExtendedSearchNo do
  let(:vcr_dir) { "extended_search_no" }

  describe ".call" do
    it "raises RequestError (not authorized for this endpoint)" do
      expect {
        VCR.use_cassette("#{vcr_dir}/call") do
          described_class.call(type: "person", last_name: "Hansen", package: "bas")
        end
      }.to raise_error(RestEasy::RequestError)
    end
  end
end
