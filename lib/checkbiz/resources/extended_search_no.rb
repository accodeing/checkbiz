# frozen_string_literal: true

require_relative "../types/common"

module Checkbiz
  class ExtendedSearchNo < Checkbiz::Resource
    configure do
      path "v1/extendedsearchno"
    end

    attr :count, Types::Integer.optional, :read_only
    attr :contacts, Types::Array.of(Types::SearchNoContact).optional, :read_only
  end
end
