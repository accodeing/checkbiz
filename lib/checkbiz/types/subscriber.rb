# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class SubscriberCompanyBasicBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :company_name, Types::String.optional
      attribute? :organization_number, Types::String.optional
      attribute? :full_name, Types::String.optional
      attribute? :co, Types::String.optional
      attribute? :street, Types::String.optional
      attribute? :zip_code, Types::String.optional
      attribute? :city, Types::String.optional
      attribute? :company_code, Types::String.optional
      attribute? :company_code_text, Types::String.optional
      attribute? :registration_date, Types::String.optional
      attribute? :status, Types::String.optional
    end

    class SubscriberInfoBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :company_name, Types::String.optional
      attribute? :organization_number, Types::String.optional
      attribute? :personal_number, Types::String.optional
      attribute? :first_name, Types::String.optional
      attribute? :middle_name, Types::String.optional
      attribute? :last_name, Types::String.optional
    end

    class SubscriberInfoExtendedBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :operator, Types::String.optional
      attribute? :phone_type, Types::String.optional
      attribute? :sub_type, Types::String.optional
      attribute? :first_seen, Types::String.optional
      attribute? :updated, Types::String.optional
    end

    class SubscriberPersonBasicBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :ssn, Types::String.optional
      attribute? :ssn_status, Types::String.optional
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

    class SubscriberQueryBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :phonenumber, Types::String.optional
    end

  end
end
