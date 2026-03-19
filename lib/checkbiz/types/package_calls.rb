# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class PackageCallsPackageBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :package_name, Types::String.optional
      attribute? :number_of_calls_last_year, Types::Integer.optional
      attribute? :number_of_calls_this_year, Types::Integer.optional
      attribute? :number_of_calls_last_month, Types::Integer.optional
      attribute? :number_of_calls_this_month, Types::Integer.optional
    end

    class PackageCallsProductBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :product_name, Types::String.optional
      attribute? :product_path, Types::String.optional
      attribute? :packages, Types::Array.of(PackageCallsPackageBlock).optional
    end

  end
end
