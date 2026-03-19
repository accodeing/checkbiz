# frozen_string_literal: true

require_relative "../types/address_information"

module Checkbiz
  class AddressInformation < Checkbiz::Resource
    configure do
      path "v1/addressinformation"
    end

    attr :address_person_information, Types::AddressPersonInformationBlock.optional, :read_only
    attr :address_company_information, Types::AddressCompanyInformationBlock.optional, :read_only
    attr :address_phone_information, Types::AddressPhoneInformationBlock.optional, :read_only
    attr :address_information, Types::AddressInformationBlock.optional, :read_only
    attr :address_residential_information, Types::AddressResidentalInformationBlock.optional, :read_only
  end
end
