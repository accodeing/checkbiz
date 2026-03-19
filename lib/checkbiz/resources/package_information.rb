# frozen_string_literal: true

require_relative "../types/package_information"

module Checkbiz
  class PackageInformation < Checkbiz::Resource
    configure do
      path "v1/packageinformation"
    end

    attr :products, Types::Array.of(Types::PackageInformationProductBlock).optional, :read_only
  end
end
