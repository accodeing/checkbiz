# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class PersonVerifyBasicBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :first_name, Types::String.optional
      attribute? :given_name, Types::String.optional
      attribute? :sur_name, Types::String.optional
      attribute? :middle_name, Types::String.optional
      attribute? :last_name, Types::String.optional
      attribute? :co, Types::String.optional
      attribute? :street, Types::String.optional
      attribute? :zip_code, Types::String.optional
      attribute? :city, Types::String.optional
    end

    class PersonVerifyPhoneNumberBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :phone_numbers, Types::Array.of(Types::String).optional
      attribute? :phone_types, Types::Array.of(Types::String).optional
    end

    class PersonVerifyQuery < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :ssn, Types::String.optional
      attribute? :first_name, Types::String.optional
      attribute? :last_name, Types::String.optional
      attribute? :complete_name, Types::String.optional
      attribute? :gender, Types::String.optional
      attribute? :street, Types::String.optional
      attribute? :zip_code, Types::String.optional
      attribute? :city, Types::String.optional
      attribute? :phone_nr, Types::String.optional
      attribute? :exclude_below18_year, Types::Bool.optional
      attribute? :match_steps, Types::String.optional
      attribute? :text, Types::String.optional
    end

    class PersonVerifySSNBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :ssn, Types::String.optional
    end

    class PersonVerifyMatch < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :basic, PersonVerifyBasicBlock.optional
      attribute? :ssn, PersonVerifySSNBlock.optional
      attribute? :phone_numbers, PersonVerifyPhoneNumberBlock.optional
    end

  end
end
