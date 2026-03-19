# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class SignatoryOrganization < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :organization_number, Types::String.optional
      attribute? :company_name, Types::String.optional
      attribute? :status_code, Types::String.optional
      attribute? :status_text, Types::String.optional
      attribute? :status_date, Types::String.optional
      attribute? :signatory_list, Types::Array.of(Types::String).optional
    end

    class SignatoryOrganizationBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :organization, SignatoryOrganization.optional
    end

    class SignatoryPersonBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :ssn, Types::String.optional
      attribute? :organizations, Types::Array.of(SignatoryOrganization).optional
    end

    class SignatoryRightToSignBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :right_to_sign, Types::String.optional
      attribute? :organization, SignatoryOrganization.optional
    end

  end
end
