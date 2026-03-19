# frozen_string_literal: true

require_relative "../types/company_search"

module Checkbiz
  class CompanySearch < Checkbiz::Resource
    configure do
      path "v1/companysearch"
    end

    attr :basic_result, Types::CompanySearchBasicBlock.optional, :read_only
  end
end
