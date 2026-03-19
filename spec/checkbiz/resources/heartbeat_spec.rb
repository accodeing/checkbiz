# frozen_string_literal: true

require "spec_helper"

RSpec.describe Checkbiz::Heartbeat do
  let(:vcr_dir) { "heartbeat" }

  describe ".call" do
    let(:result) do
      VCR.use_cassette("#{vcr_dir}/call") do
        described_class.call
      end
    end

    it "returns an instance of the resource" do
      expect(result).to be_a(described_class)
    end
  end
end
