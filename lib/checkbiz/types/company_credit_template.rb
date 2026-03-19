# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class CompanyValidationFault < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :field, Types::String.optional
      attribute? :description, Types::String.optional
      attribute? :value, Types::String.optional
      attribute? :boundary, Types::String.optional
    end

    class CompanyValidationFaultV2 < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :description, Types::String.optional
      attribute? :field, Types::String.optional
      attribute? :value, Types::String.optional
      attribute? :boundary, Types::String.optional
    end

    class CompanyCreditTemplateBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :organization_number, Types::String.optional
      attribute? :validation_result, Types::Integer.optional
      attribute? :validation_result_text, Types::String.optional
      attribute? :rejections, Types::Array.of(CompanyValidationFault).optional
      attribute? :examinations, Types::Array.of(CompanyValidationFault).optional
      attribute? :official_name, Types::String.optional
      attribute? :official_address, Types::String.optional
      attribute? :official_zip_code, Types::String.optional
      attribute? :official_city, Types::String.optional
      attribute? :template_name, Types::String.optional
    end

    class CompanyCreditTemplateBlockV2 < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :organization_number, Types::String.optional
      attribute? :validation_result, Types::Integer.optional
      attribute? :validation_result_text, Types::String.optional
      attribute? :rejections, Types::Array.of(CompanyValidationFaultV2).optional
      attribute? :examinations, Types::Array.of(CompanyValidationFaultV2).optional
      attribute? :official_organization_name, Types::String.optional
      attribute? :template_name, Types::String.optional
    end

  end
end
