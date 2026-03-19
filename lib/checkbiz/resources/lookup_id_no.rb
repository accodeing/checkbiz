# frozen_string_literal: true

require_relative "../types/lookup_id_no"

module Checkbiz
  class LookupIdNo < Checkbiz::Resource
    configure do
      path "v1/lookupidno"
    end

    attr :count, Types::Integer.optional, :read_only
    attr :contacts, Types::Array.of(Types::LookupIdNoContact).optional, :read_only
  end
end
