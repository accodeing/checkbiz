# frozen_string_literal: true

require "spec_helper"

RSpec.describe Checkbiz::Person do
  let(:vcr_dir) { "person" }

  def find(personal_number, cassette:)
    VCR.use_cassette("#{vcr_dir}/#{cassette}") do
      described_class.find(personal_number)
    end
  end

  describe ".find" do
    context "with a person in Checkbiz" do
      subject(:person) { find("198510102398", cassette: "find") }

      it "returns the person" do
        expect(person).to have_attributes(
          personal_number: "198510102398",
          status: "normal",
          secret_identity: false,
          birth_date: Date.new(1985, 10, 10),
          gender: "man",
          given_name: "Adam",
          first_names: "Adam August",
          last_names: "Exempelsson",
          registration_date: Date.new(1985, 10, 10),
          county_code: "01",
          municipality_code: "0180",
          fbf_address: "Testgatan 123",
          fbf_zip: "11122",
          fbf_city: "Stockholm"
        )
      end

      it "returns nil for what Checkbiz doesn't know" do
        expect(person).to have_attributes(
          deregistration_date: nil,
          fbf_care_of: nil,
          sp_address: nil,
          foreign_country: nil
        )
      end
    end

    context "with a deceased person" do
      it "returns the deregistration date as Checkbiz sends it, since the day can be unknown" do
        expect(find("198612122385", cassette: "deceased")).to have_attributes(
          status: "avliden", deregistration_date: "2026-03-00"
        )
      end
    end

    context "with a deregistered person" do
      it "returns the deregistration date as Checkbiz sends it, since the month and day can be unknown" do
        expect(find("199606062397", cassette: "deregistered")).to have_attributes(
          status: "avregistrerad", deregistration_date: "2026-00-00"
        )
      end
    end

    context "with the personal number as an Integer" do
      it "sends it as a string" do
        expect(find(198510102398, cassette: "find").personal_number).to eq("198510102398")
      end
    end

    context "with a personal number Checkbiz doesn't know" do
      it "raises RequestError" do
        expect { find("190001012384", cassette: "not_found") }.to raise_error(
          Checkbiz::RequestError, "Request failed: 404 - No test data for requested ID '190001012384'."
        )
      end
    end

    context "with an invalid personal number" do
      it "raises RequestError" do
        expect { find("123", cassette: "invalid") }.to raise_error(
          Checkbiz::RequestError, "Request failed: 400 - The string '123' is not a valid personal number."
        )
      end
    end

    context "when Checkbiz answers with something other than JSON" do
      before do
        Checkbiz.config.authentication = instance_double(Checkbiz::Auth::Bearer, apply: nil, on_rejected: nil)
        stub_request(:post, "https://data.checkbiz.se/v2/person/base")
          .to_return(status: 200, body: "<html>Down for maintenance</html>")
      end

      it "raises Error instead of returning an empty person" do
        expect { described_class.find("198510102398") }.to raise_error(
          Checkbiz::Error, "Unexpected response from Checkbiz: <html>Down for maintenance</html>"
        )
      end
    end
  end
end
