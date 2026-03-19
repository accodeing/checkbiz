# frozen_string_literal: true

module Checkbiz
  class CompanyAnnualReport < Checkbiz::Resource
    configure do
      path "v1/companyannualreport"
    end

    attr :document, Types::String.optional, :read_only
    attr :type, Types::String.optional, :read_only
    attr :encoding, Types::String.optional, :read_only
  end
end
