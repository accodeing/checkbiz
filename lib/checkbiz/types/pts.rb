# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class PTSBasicBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :operator, Types::String.optional
    end

  end
end
