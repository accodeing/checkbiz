# frozen_string_literal: true

require_relative "../types/company_advanced_search"

module Checkbiz
  class CompanySearchAdvanced < Checkbiz::Resource
    configure do
      path "v1/companysearchadvanced"
    end

    attr :basic_result, Types::CompanyAdvancedSearchBasicBlock.optional, :read_only
  end
end
