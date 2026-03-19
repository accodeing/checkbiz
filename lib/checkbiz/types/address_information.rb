# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class AddressCompanyInformation < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :company_name, Types::String.optional
      attribute? :organization_number, Types::String.optional
      attribute? :turnover, Types::Float.optional
      attribute? :net_income, Types::Float.optional
      attribute? :number_of_employees, Types::Float.optional
      attribute? :registered_sni, Types::Array.of(SNIModel).optional
    end

    class AddressInformationBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :street, Types::String.optional
      attribute? :zip_code, Types::String.optional
      attribute? :city, Types::String.optional
      attribute? :municipality, Types::String.optional
      attribute? :municipality_code, Types::String.optional
      attribute? :parish, Types::String.optional
      attribute? :district, Types::String.optional
      attribute? :district_code, Types::String.optional
      attribute? :county, Types::String.optional
      attribute? :county_code, Types::String.optional
      attribute? :latitude, Types::String.optional
      attribute? :longitude, Types::String.optional
      attribute? :house_hold_reg_date, Types::String.optional
    end

    class AddressPersonInformation < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :ssn, Types::String.optional
      attribute? :first_name, Types::String.optional
      attribute? :last_name, Types::String.optional
      attribute? :age, Types::Integer.optional
      attribute? :gender, Types::String.optional
      attribute? :reg_date, Types::String.optional
      attribute? :change_date, Types::String.optional
    end

    class AddressPhoneInformation < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :first_name, Types::String.optional
      attribute? :last_name, Types::String.optional
      attribute? :phone_number, Types::String.optional
      attribute? :age, Types::Integer.optional
      attribute? :gender, Types::String.optional
    end

    class AddressResidentalAppartment < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :building_purpose, Types::Integer.optional
      attribute? :building_type, Types::Integer.optional
      attribute? :construction_year, Types::Integer.optional
      attribute? :type_code, Types::Integer.optional
      attribute? :rt90x, Types::Float.optional
      attribute? :rt90y, Types::Float.optional
      attribute? :sweref99x, Types::Integer.optional
      attribute? :sweref99y, Types::Integer.optional
      attribute? :wgs84lat, Types::Float.optional
      attribute? :wgs84lon, Types::Float.optional
    end

    class AddressResidentalDetails < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :apartment_area, Types::Integer.optional
      attribute? :apartment_category, Types::Integer.optional
      attribute? :apartment_nr, Types::Integer.optional
      attribute? :building_purpose, Types::Integer.optional
      attribute? :building_type, Types::Integer.optional
      attribute? :construction_year, Types::Integer.optional
      attribute? :county_code, Types::String.optional
      attribute? :municipality_code, Types::String.optional
      attribute? :parish_code, Types::String.optional
      attribute? :floor, Types::Float.optional
      attribute? :floors, Types::Float.optional
      attribute? :home_type, Types::String.optional
      attribute? :house_nr, Types::Integer.optional
      attribute? :kitchen_type, Types::Integer.optional
      attribute? :letter, Types::String.optional
      attribute? :number, Types::String.optional
      attribute? :ownership_type, Types::String.optional
      attribute? :postal_area, Types::String.optional
      attribute? :postal_code, Types::String.optional
      attribute? :property_key, Types::String.optional
      attribute? :rooms, Types::Float.optional
      attribute? :street, Types::String.optional
      attribute? :type_code, Types::Integer.optional
      attribute? :rt90x, Types::Float.optional
      attribute? :rt90y, Types::Float.optional
      attribute? :sweref99x, Types::Integer.optional
      attribute? :sweref99y, Types::Integer.optional
      attribute? :wgs84lat, Types::Float.optional
      attribute? :wgs84lon, Types::Float.optional
      attribute? :updated_at, Types::String.optional
      attribute? :updated_from, Types::String.optional
    end

    class AddressCompanyInformationBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :companies, Types::Array.of(AddressCompanyInformation).optional
    end

    class AddressPersonInformationBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :persons, Types::Array.of(AddressPersonInformation).optional
    end

    class AddressPhoneInformationBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :phones, Types::Array.of(AddressPhoneInformation).optional
    end

    class AddressResidentalInformationBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :residential_information, AddressResidentalDetails.optional
      attribute? :apartment_information, AddressResidentalAppartment.optional
    end

  end
end
