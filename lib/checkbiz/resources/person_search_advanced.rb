# frozen_string_literal: true

require_relative "../types/person_advanced_search"

module Checkbiz
  class PersonSearchAdvanced < Checkbiz::Resource
    configure do
      path "v1/personsearchadvanced"
    end

    attr :basic_result, Types::PersonAdvancedSearchBasicBlock.optional, :read_only
    attr :extended_result, Types::PersonAdvancedSearchExtendedBlock.optional, :read_only
    attr :search_id_result, Types::PersonAdvancedSearchIdBlock.optional, :read_only
  end
end
