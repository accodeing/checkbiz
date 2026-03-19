# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class CompanyPositionBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :latitude, Types::String.optional
      attribute? :longitude, Types::String.optional
    end

    class CompanySearchBasicBlockRecord < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :org_nr, Types::String.optional
      attribute? :company_name, Types::String.optional
      attribute? :company_code, Types::String.optional
      attribute? :co, Types::String.optional
      attribute? :street, Types::String.optional
      attribute? :zip_code, Types::String.optional
      attribute? :city, Types::String.optional
      attribute? :phone_numbers, Types::Array.of(Types::String).optional
      attribute? :position, CompanyPositionBlock.optional
    end

    class CompanySearchBasicBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :records_returned, Types::Integer.optional
      attribute? :total_records_found, Types::Integer.optional
      attribute? :records, Types::Array.of(CompanySearchBasicBlockRecord).optional
    end

  end
end
