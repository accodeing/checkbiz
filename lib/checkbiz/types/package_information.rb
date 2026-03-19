# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class PackageInformationPackageBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :package_name, Types::String.optional
    end

    class PackageInformationProductBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :product_name, Types::String.optional
      attribute? :product_path, Types::String.optional
      attribute? :packages, Types::Array.of(PackageInformationPackageBlock).optional
    end

  end
end
