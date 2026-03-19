# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class CompanyEventBasicBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :company_name, Types::String.optional
      attribute? :organization_number, Types::String.optional
      attribute? :status, Types::String.optional
      attribute? :co, Types::String.optional
      attribute? :street, Types::String.optional
      attribute? :zip_code, Types::String.optional
      attribute? :city, Types::String.optional
      attribute? :company_code, Types::String.optional
      attribute? :company_code_text, Types::String.optional
      attribute? :phone_number, Types::String.optional
      attribute? :corporation_founded_date, Types::String.optional
      attribute? :corporation_registered_date, Types::String.optional
      attribute? :current_corporation_registered_date, Types::String.optional
      attribute? :event_date, Types::String.optional
    end

    class CompanyEventKeyBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :company_name, Types::String.optional
      attribute? :organization_number, Types::String.optional
      attribute? :status, Types::String.optional
      attribute? :event_date, Types::String.optional
    end

  end
end
