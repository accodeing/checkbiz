# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class BuildingType < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :text, Types::String.optional
    end

    class County < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :code, Types::String.optional
      attribute? :text, Types::String.optional
    end

    class MarketingReservation < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :direct_mail, Types::String.optional
      attribute? :tele_marketing, Types::String.optional
      attribute? :humanitarian, Types::String.optional
      attribute? :code, Types::String.optional
      attribute? :reservation_date, Types::String.optional
    end

    class Municip < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :code, Types::String.optional
      attribute? :text, Types::String.optional
    end

    class Phone < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :type, Types::String.optional
      attribute? :country, Types::String.optional
      attribute? :number, Types::String.optional
      attribute? :phone_user, Types::String.optional
    end

    class Source < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :id, Types::String.optional
      attribute? :name, Types::String.optional
      attribute? :name_date, Types::String.optional
      attribute? :address_date, Types::String.optional
      attribute? :moved_date, Types::String.optional
    end

    class Status < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :code, Types::String.optional
      attribute? :text, Types::String.optional
      attribute? :date, Types::String.optional
    end

    class Name < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :first_name, Types::String.optional
      attribute? :middle_name, Types::String.optional
      attribute? :last_name, Types::String.optional
      attribute? :sources, Types::Array.of(Source).optional
      attribute? :full_name, Types::String.optional
      attribute? :is_legal, Types::String.optional
    end

    class PersonAddress < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :type, Types::String.optional
      attribute? :street_name, Types::String.optional
      attribute? :house_number, Types::String.optional
      attribute? :entrance, Types::String.optional
      attribute? :apartment_number, Types::String.optional
      attribute? :postal_code, Types::String.optional
      attribute? :city, Types::String.optional
      attribute? :sources, Types::Array.of(Source).optional
      attribute? :address, Types::String.optional
      attribute? :building_type, BuildingType.optional
      attribute? :box_office, Types::String.optional
      attribute? :usage_type, Types::String.optional
      attribute? :is_legal, Types::String.optional
      attribute? :municip, Municip.optional
      attribute? :county, County.optional
    end

    class PersonDetail < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :object_identity, Types::String.optional
      attribute? :birth_date, Types::String.optional
      attribute? :gender, Types::String.optional
      attribute? :deceased_date, Types::String.optional
      attribute? :status, Status.optional
      attribute? :marketing_reservation, MarketingReservation.optional
    end

    class Person < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :person_detail, PersonDetail.optional
      attribute? :phones, Types::Array.of(Phone).optional
      attribute? :names, Types::Array.of(Name).optional
      attribute? :addresses, Types::Array.of(PersonAddress).optional
    end

  end
end
