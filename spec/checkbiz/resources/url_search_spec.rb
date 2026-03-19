# frozen_string_literal: true

require "spec_helper"

RSpec.describe Checkbiz::UrlSearch do
  let(:vcr_dir) { "url_search" }

  describe ".call" do
    it "raises RequestError (not authorized for this endpoint)" do
      expect {
        VCR.use_cassette("#{vcr_dir}/call") do
          described_class.call(company_name: "Test", package: "bas")
        end
      }.to raise_error(RestEasy::RequestError)
    end
  end
end
