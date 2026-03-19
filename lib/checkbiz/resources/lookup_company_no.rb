# frozen_string_literal: true

require_relative "../types/lookup_company_no"

module Checkbiz
  class LookupCompanyNo < Checkbiz::Resource
    configure do
      path "v1/lookupcompanyno"
    end

    attr :count, Types::Integer.optional, :read_only
    attr :contacts, Types::Array.of(Types::LookupCompanyNoContact).optional, :read_only
  end
end
