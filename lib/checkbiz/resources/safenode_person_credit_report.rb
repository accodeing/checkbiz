# frozen_string_literal: true

require_relative "../types/safenode_person_credit_report"

module Checkbiz
  class SafenodePersonCreditReport < Checkbiz::Resource
    configure do
      path "v1/safenodepersoncreditreport"
    end

    attr :person_credit_report, Types::SafenodePersonCreditReport.optional, :read_only
    attr :pdf, Types::String.optional, :read_only
  end
end
