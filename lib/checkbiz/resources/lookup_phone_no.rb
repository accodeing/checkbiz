# frozen_string_literal: true

require_relative "../types/lookup_phone_no"

module Checkbiz
  class LookupPhoneNo < Checkbiz::Resource
    configure do
      path "v1/lookupphoneno"
    end

    attr :count, Types::Integer.optional, :read_only
    attr :contacts, Types::Array.of(Types::LookupPhoneNoContact).optional, :read_only
  end
end
