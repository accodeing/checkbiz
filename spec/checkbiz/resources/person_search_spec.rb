# frozen_string_literal: true

require "spec_helper"

RSpec.describe Checkbiz::PersonSearch do
  let(:vcr_dir) { "person_search" }

  describe ".call" do
    let(:result) do
      VCR.use_cassette("#{vcr_dir}/call") do
        described_class.call(who: "Svensson", max_nr_records: 5, package: "sokperson")
      end
    end

    it "returns an instance of the resource" do
      expect(result).to be_a(described_class)
    end
  end
end
