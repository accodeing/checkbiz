# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class SparForeignAddress < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :care_of, Types::String.optional
      attribute? :address1, Types::String.optional
      attribute? :address2, Types::String.optional
      attribute? :address3, Types::String.optional
      attribute? :country, Types::String.optional
      attribute? :date_from, Types::String.optional
      attribute? :date_to, Types::String.optional
    end

    class SparOfficialAddress < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :care_of, Types::String.optional
      attribute? :continuation, Types::String.optional
      attribute? :street_address, Types::String.optional
      attribute? :zip_code, Types::String.optional
      attribute? :city, Types::String.optional
      attribute? :municipality_code, Types::String.optional
      attribute? :district_code, Types::String.optional
      attribute? :county_code, Types::String.optional
      attribute? :date_to, Types::String.optional
      attribute? :date_from, Types::String.optional
      attribute? :registration_date, Types::String.optional
    end

    class SparPersonDetails < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :first_name, Types::String.optional
      attribute? :given_name, Types::String.optional
      attribute? :middle_name, Types::String.optional
      attribute? :sur_name, Types::String.optional
      attribute? :date_of_birth, Types::String.optional
      attribute? :gender, Types::String.optional
      attribute? :deseased_date, Types::String.optional
      attribute? :de_regstration_code, Types::String.optional
      attribute? :de_registration_date, Types::String.optional
      attribute? :previous_ssn, Types::String.optional
      attribute? :current_ssn, Types::String.optional
      attribute? :protected, Types::Bool.optional
      attribute? :protected_change_date, Types::String.optional
      attribute? :protected_address, Types::Bool.optional
      attribute? :protected_address_change_date, Types::String.optional
      attribute? :swedish_citizen, Types::Bool.optional
      attribute? :birth_parish, Types::String.optional
      attribute? :birth_county_code, Types::String.optional
      attribute? :notification_name, Types::String.optional
    end

    class SparRelation < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :deseased_date, Types::String.optional
      attribute? :date_from, Types::String.optional
      attribute? :date_to, Types::String.optional
      attribute? :ssn, Types::String.optional
      attribute? :first_name, Types::String.optional
      attribute? :middle_name, Types::String.optional
      attribute? :sur_name, Types::String.optional
      attribute? :date_of_birth, Types::String.optional
      attribute? :relation_type, Types::String.optional
      attribute? :de_regstration_code, Types::String.optional
      attribute? :de_registration_date, Types::String.optional
    end

    class SparSpecialAddress < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :care_of, Types::String.optional
      attribute? :zip_code, Types::String.optional
      attribute? :city, Types::String.optional
      attribute? :continuation, Types::String.optional
      attribute? :street_address, Types::String.optional
      attribute? :date_to, Types::String.optional
      attribute? :date_from, Types::String.optional
    end

    class SparBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :protected, Types::Bool.optional
      attribute? :protected_change_date, Types::String.optional
      attribute? :protected_address, Types::Bool.optional
      attribute? :protected_address_change_date, Types::String.optional
      attribute? :ssn, Types::String.optional
      attribute? :last_change_date_spar, Types::String.optional
      attribute? :details, SparPersonDetails.optional
      attribute? :official_addresses, Types::Array.of(SparOfficialAddress).optional
      attribute? :special_addresses, Types::Array.of(SparSpecialAddress).optional
      attribute? :foreign_addresses, Types::Array.of(SparForeignAddress).optional
      attribute? :relations, Types::Array.of(SparRelation).optional
      attribute? :income_year, Types::String.optional
      attribute? :summarized_income, Types::String.optional
    end

  end
end
