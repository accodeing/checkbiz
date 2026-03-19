# frozen_string_literal: true

require_relative "../types/person_information"

module Checkbiz
  class PersonBeneficialOwner < Checkbiz::Resource
    configure do
      path "v1/personbeneficialowner"
    end

    attr :ssn, Types::String.optional, :read_only
    attr :ssn_status, Types::String.optional, :read_only
    attr :first_name, Types::String.optional, :read_only
    attr :middle_name, Types::String.optional, :read_only
    attr :last_name, Types::String.optional, :read_only
    attr :citizenship, Types::String.optional, :read_only
    attr :country_of_residence, Types::String.optional, :read_only
    attr :number_of_involvements_as_beneficial_owner, Types::Integer.optional, :read_only
    attr :number_of_company_involvements, Types::Integer.optional, :read_only
    attr :basic, Types::PersonBasicBlock.optional, :read_only
    attr :extended, Types::PersonExtendedBlock.optional, :read_only
    attr :companies, Types::Array.of(Types::PersonBeneficialOwnerCompanyBlock).optional, :read_only
  end
end
