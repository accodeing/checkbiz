# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class PersonEventBasicBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :ssn, Types::String.optional
      attribute? :ssn_status, Types::String.optional
      attribute? :event_date, Types::String.optional
      attribute? :first_name, Types::String.optional
      attribute? :last_name, Types::String.optional
      attribute? :given_name, Types::String.optional
      attribute? :street, Types::String.optional
      attribute? :zip_code, Types::String.optional
      attribute? :city, Types::String.optional
      attribute? :municipality, Types::String.optional
      attribute? :municipality_code, Types::String.optional
    end

    class PersonEventKeyBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :ssn, Types::String.optional
      attribute? :ssn_status, Types::String.optional
      attribute? :event_date, Types::String.optional
    end

  end
end
