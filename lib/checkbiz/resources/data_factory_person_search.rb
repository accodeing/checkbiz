# frozen_string_literal: true

require_relative "../types/data_factory_person_search"

module Checkbiz
  class DataFactoryPersonSearch < Checkbiz::Resource
    configure do
      path "v1/datafactorypersonsearch"
    end

    attr :count, Types::Integer.optional, :read_only
    attr :persons, Types::Array.of(Types::Person).optional, :read_only
  end
end
