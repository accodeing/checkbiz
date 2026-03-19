# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class LookupIdNoContact < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :first_name, Types::String.optional
      attribute? :last_name, Types::String.optional
      attribute? :type, Types::String.optional
      attribute? :id, Types::String.optional
      attribute? :name, Types::String.optional
      attribute? :geography, LookupNoGeography.optional
      attribute? :contact_points, Types::Array.of(LookupNoContactPoint).optional
      attribute? :info_url, Types::String.optional
    end

  end
end
