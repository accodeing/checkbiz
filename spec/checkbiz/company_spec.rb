# frozen_string_literal: true

require "spec_helper"

RSpec.describe Checkbiz::Company do
  let(:vcr_dir) { "company" }

  def find(organization_number, cassette:)
    VCR.use_cassette("#{vcr_dir}/#{cassette}") { described_class.find(organization_number) }
  end

  describe ".find" do
    context "with a company in Checkbiz" do
      subject(:company) { find("5555555555", cassette: "find") }

      it "returns the company" do
        expect(company).to have_attributes(
          organization_number: "5555555555",
          name: "Exempelbolaget AB",
          form: "aktiebolag",
          status: "normal",
          registration_date: Date.new(1998, 6, 12),
          seat_municipality_code: "0180",
          address: "Testgatan 123",
          zip: "11122",
          city: "Stockholm",
          phone_number: "0846500456",
          email: "test-exempelbolaget-ab@localhost"
        )
      end

      it "returns nil for what Checkbiz doesn't know" do
        expect(company).to have_attributes(
          status_change_date: nil,
          deregistration_date: nil,
          care_of: nil,
          country_code: nil
        )
      end
    end

    context "with an organization number Checkbiz doesn't know" do
      it "raises RequestError" do
        expect { find("5560000001", cassette: "not_found") }.to raise_error(
          Checkbiz::RequestError, "Request failed: 404 - No test data for requested ID '5560000001'."
        )
      end
    end

    context "with an invalid organization number" do
      it "raises RequestError" do
        expect { find("123", cassette: "invalid") }.to raise_error(
          Checkbiz::RequestError, "Request failed: 400 - The string '123' is not a valid organization number."
        )
      end
    end
  end
end
