# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class PersonAdvancedSearchPositionBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :latitude, Types::String.optional
      attribute? :longitude, Types::String.optional
    end

    class RegisteredDogsModel < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :name, Types::String.optional
      attribute? :race, Types::String.optional
      attribute? :gender, Types::String.optional
      attribute? :birth_date, Types::String.optional
      attribute? :age, Types::String.optional
      attribute? :updated_date, Types::String.optional
      attribute? :chip_id, Types::String.optional
      attribute? :ssn, Types::String.optional
    end

    class PersonAdvancedSearchBasicBlockRecord < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :first_name, Types::String.optional
      attribute? :given_name, Types::String.optional
      attribute? :last_name, Types::String.optional
      attribute? :street, Types::String.optional
      attribute? :zip_code, Types::String.optional
      attribute? :city, Types::String.optional
      attribute? :municipality, Types::String.optional
      attribute? :municipality_code, Types::String.optional
      attribute? :county, Types::String.optional
      attribute? :county_code, Types::String.optional
      attribute? :age, Types::Integer.optional
      attribute? :gender, Types::String.optional
      attribute? :is_married, Types::Bool.optional
      attribute? :phone_numbers, Types::Array.of(Types::String).optional
      attribute? :position, PersonAdvancedSearchPositionBlock.optional
    end

    class PersonAdvancedSearchExtendedBlockRecord < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :ssn, Types::String.optional
      attribute? :first_name, Types::String.optional
      attribute? :given_name, Types::String.optional
      attribute? :last_name, Types::String.optional
      attribute? :street, Types::String.optional
      attribute? :zip_code, Types::String.optional
      attribute? :city, Types::String.optional
      attribute? :municipality, Types::String.optional
      attribute? :municipality_code, Types::String.optional
      attribute? :county, Types::String.optional
      attribute? :county_code, Types::String.optional
      attribute? :age, Types::Integer.optional
      attribute? :gender, Types::String.optional
      attribute? :is_married, Types::Bool.optional
      attribute? :phone_numbers, Types::Array.of(Types::String).optional
      attribute? :position, PersonAdvancedSearchPositionBlock.optional
      attribute? :dogs, Types::Array.of(RegisteredDogsModel).optional
    end

    class PersonAdvancedSearchIdBlockRecord < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :idnummer, Types::String.optional
      attribute? :id_nr, Types::String.optional
      attribute? :first_name, Types::String.optional
      attribute? :given_name, Types::String.optional
      attribute? :last_name, Types::String.optional
      attribute? :street, Types::String.optional
      attribute? :zip_code, Types::String.optional
      attribute? :city, Types::String.optional
      attribute? :municipality, Types::String.optional
      attribute? :municipality_code, Types::String.optional
      attribute? :county, Types::String.optional
      attribute? :county_code, Types::String.optional
      attribute? :age, Types::Integer.optional
      attribute? :gender, Types::String.optional
      attribute? :is_married, Types::Bool.optional
      attribute? :phone_numbers, Types::Array.of(Types::String).optional
      attribute? :position, PersonAdvancedSearchPositionBlock.optional
    end

    class PersonAdvancedSearchBasicBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :records_returned, Types::Integer.optional
      attribute? :total_records_found, Types::Integer.optional
      attribute? :records, Types::Array.of(PersonAdvancedSearchBasicBlockRecord).optional
    end

    class PersonAdvancedSearchExtendedBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :records_returned, Types::Integer.optional
      attribute? :total_records_found, Types::Integer.optional
      attribute? :records, Types::Array.of(PersonAdvancedSearchExtendedBlockRecord).optional
    end

    class PersonAdvancedSearchIdBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :records_returned, Types::Integer.optional
      attribute? :total_records_found, Types::Integer.optional
      attribute? :records, Types::Array.of(PersonAdvancedSearchIdBlockRecord).optional
    end

  end
end
