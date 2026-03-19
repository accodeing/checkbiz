# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class PersonValidationFault < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :field, Types::String.optional
      attribute? :description, Types::String.optional
      attribute? :value, Types::String.optional
      attribute? :boundary, Types::String.optional
    end

    class PersonValidationFaultV2 < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :description, Types::String.optional
      attribute? :field, Types::String.optional
      attribute? :value, Types::String.optional
      attribute? :boundary, Types::String.optional
    end

    class PersonCreditTemplateBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :person_number, Types::String.optional
      attribute? :validation_result, Types::Integer.optional
      attribute? :validation_result_text, Types::String.optional
      attribute? :rejections, Types::Array.of(PersonValidationFault).optional
      attribute? :examinations, Types::Array.of(PersonValidationFault).optional
      attribute? :official_first_name, Types::String.optional
      attribute? :official_given_name, Types::String.optional
      attribute? :official_last_name, Types::String.optional
      attribute? :official_address, Types::String.optional
      attribute? :official_zip_code, Types::String.optional
      attribute? :official_city, Types::String.optional
      attribute? :template_name, Types::String.optional
    end

    class PersonCreditTemplateBlockV2 < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :person_number, Types::String.optional
      attribute? :validation_result, Types::Integer.optional
      attribute? :validation_result_text, Types::String.optional
      attribute? :rejections, Types::Array.of(PersonValidationFaultV2).optional
      attribute? :examinations, Types::Array.of(PersonValidationFaultV2).optional
      attribute? :official_first_name, Types::String.optional
      attribute? :official_given_name, Types::String.optional
      attribute? :official_last_name, Types::String.optional
      attribute? :official_address, Types::String.optional
      attribute? :official_zip_code, Types::String.optional
      attribute? :official_city, Types::String.optional
      attribute? :template_name, Types::String.optional
    end

  end
end
