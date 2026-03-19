# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class CompanyAutocompleteBasicBlockRecord < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :organization_number, Types::String.optional
      attribute? :company_name, Types::String.optional
      attribute? :city, Types::String.optional
    end

    class CompanyAutocompleteBasicBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :records_returned, Types::Integer.optional
      attribute? :total_records_found, Types::Integer.optional
      attribute? :records, Types::Array.of(CompanyAutocompleteBasicBlockRecord).optional
    end

  end
end
