# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class SubsbriberInfoBasicBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :phone_number_search, Types::String.optional
      attribute? :phone_number, Types::String.optional
      attribute? :organization_number, Types::String.optional
      attribute? :personal_number, Types::String.optional
      attribute? :company_name, Types::String.optional
      attribute? :first_name, Types::String.optional
      attribute? :middle_name, Types::String.optional
      attribute? :last_name, Types::String.optional
    end

    class SubsbriberInfoExtendedBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :phone_number_search, Types::String.optional
      attribute? :phone_number, Types::String.optional
      attribute? :organization_number, Types::String.optional
      attribute? :personal_number, Types::String.optional
      attribute? :company_name, Types::String.optional
      attribute? :first_name, Types::String.optional
      attribute? :middle_name, Types::String.optional
      attribute? :last_name, Types::String.optional
      attribute? :operator, Types::String.optional
      attribute? :phone_type, Types::String.optional
      attribute? :sub_type, Types::String.optional
      attribute? :first_seen, Types::String.optional
      attribute? :updated, Types::String.optional
    end

    class SubsbriberInfoKeyBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :phone_number_search, Types::String.optional
      attribute? :phone_number, Types::String.optional
      attribute? :organization_number, Types::String.optional
      attribute? :personal_number, Types::String.optional
    end

  end
end
