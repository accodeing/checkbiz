# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class CustomListItem < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :key, Types::String.optional
      attribute? :date_created, Types::String.optional
      attribute? :date_deleted, Types::String.optional
    end

  end
end
