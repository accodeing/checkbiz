# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class PersonPositionBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :latitude, Types::String.optional
      attribute? :longitude, Types::String.optional
    end

    class PersonSearchBasicBlockRecord < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :first_name, Types::String.optional
      attribute? :given_name, Types::String.optional
      attribute? :last_name, Types::String.optional
      attribute? :street, Types::String.optional
      attribute? :zip_code, Types::String.optional
      attribute? :city, Types::String.optional
      attribute? :municipality, Types::String.optional
      attribute? :age, Types::Integer.optional
      attribute? :phone_numbers, Types::Array.of(Types::String).optional
      attribute? :position, PersonPositionBlock.optional
    end

    class PersonSearchExtendedBlockRecord < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :ssn, Types::String.optional
      attribute? :first_name, Types::String.optional
      attribute? :given_name, Types::String.optional
      attribute? :last_name, Types::String.optional
      attribute? :street, Types::String.optional
      attribute? :zip_code, Types::String.optional
      attribute? :city, Types::String.optional
      attribute? :municipality, Types::String.optional
      attribute? :age, Types::Integer.optional
      attribute? :phone_numbers, Types::Array.of(Types::String).optional
      attribute? :position, PersonPositionBlock.optional
    end

    class PersonSearchIdBlockRecord < Dry::Struct
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
      attribute? :age, Types::Integer.optional
      attribute? :phone_numbers, Types::Array.of(Types::String).optional
      attribute? :position, PersonPositionBlock.optional
    end

    class PersonSearchBasicBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :records_returned, Types::Integer.optional
      attribute? :total_records_found, Types::Integer.optional
      attribute? :records, Types::Array.of(PersonSearchBasicBlockRecord).optional
    end

    class PersonSearchExtendedBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :records_returned, Types::Integer.optional
      attribute? :total_records_found, Types::Integer.optional
      attribute? :records, Types::Array.of(PersonSearchExtendedBlockRecord).optional
    end

    class PersonSearchIdBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :records_returned, Types::Integer.optional
      attribute? :total_records_found, Types::Integer.optional
      attribute? :records, Types::Array.of(PersonSearchIdBlockRecord).optional
    end

  end
end
