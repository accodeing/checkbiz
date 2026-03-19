# frozen_string_literal: true

require "spec_helper"

RSpec.describe Checkbiz::DataFactoryPersonSearch do
  let(:vcr_dir) { "data_factory_person_search" }

  describe ".call" do
    it "raises RequestError (not authorized for this endpoint)" do
      expect {
        VCR.use_cassette("#{vcr_dir}/call") do
          described_class.call(free_text: "Svensson Stockholm", package: "bas")
        end
      }.to raise_error(RestEasy::RequestError)
    end
  end
end
