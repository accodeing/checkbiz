# frozen_string_literal: true

require_relative "../types/person_search"

module Checkbiz
  class PersonSearch < Checkbiz::Resource
    configure do
      path "v1/personsearch"
    end

    attr :basic_result, Types::PersonSearchBasicBlock.optional, :read_only
    attr :extended_result, Types::PersonSearchExtendedBlock.optional, :read_only
    attr :search_id_result, Types::PersonSearchIdBlock.optional, :read_only
  end
end
