# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class ResponseItem < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :key, Types::String.optional
      attribute? :response_code, Types::String.optional
    end

  end
end
