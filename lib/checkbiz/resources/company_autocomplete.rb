# frozen_string_literal: true

require_relative "../types/company_autocomplete"

module Checkbiz
  class CompanyAutocomplete < Checkbiz::Resource
    configure do
      path "v1/companyautocomplete"
    end

    attr :basic_result, Types::CompanyAutocompleteBasicBlock.optional, :read_only
  end
end
