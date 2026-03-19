# frozen_string_literal: true

require_relative "../types/company_information_list"

module Checkbiz
  class CompanyInformationList < Checkbiz::Resource
    configure do
      path "v1/companyinformationlist"
    end

    attr :records_returned, Types::Integer.optional, :read_only
    attr :records, Types::Array.of(Types::CompanyInformationListCompanyBlock).optional, :read_only
  end
end
