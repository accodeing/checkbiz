# frozen_string_literal: true

require_relative "../types/safenode_company_credit_report"

module Checkbiz
  class SafenodeCompanyCreditReport < Checkbiz::Resource
    configure do
      path "v1/safenodecompanycreditreport"
    end

    attr :company_credit_report, Types::SafenodeCompanyCreditReport.optional, :read_only
    attr :pdf, Types::String.optional, :read_only
  end
end
