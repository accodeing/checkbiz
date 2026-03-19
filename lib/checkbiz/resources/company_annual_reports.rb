# frozen_string_literal: true

require_relative "../types/company_annual_reports"

module Checkbiz
  class CompanyAnnualReports < Checkbiz::Resource
    configure do
      path "v1/companyannualreports"
    end

    attr :documents, Types::Array.of(Types::CompanyAnnualReportsDocument).optional, :read_only
  end
end
