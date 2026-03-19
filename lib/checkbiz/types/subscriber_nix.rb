# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class SubscriberNixBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :nix_code, Types::String.optional
      attribute? :date_added, Types::String.optional
    end

  end
end
