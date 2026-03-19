# frozen_string_literal: true

require_relative "../types/company_information"

module Checkbiz
  class CompanyBeneficialOwner < Checkbiz::Resource
    configure do
      path "v1/companybeneficialowner"
    end

    attr :basic, Types::CompanyBasicBeneficialOwnerBlock.optional, :read_only
    attr :extended, Types::CompanyExtendedBlock.optional, :read_only
    attr :persons, Types::Array.of(Types::CompanyBeneficialOwnerPersonBlock).optional, :read_only
  end
end
