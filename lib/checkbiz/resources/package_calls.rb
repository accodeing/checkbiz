# frozen_string_literal: true

require_relative "../types/package_calls"

module Checkbiz
  class PackageCalls < Checkbiz::Resource
    configure do
      path "v1/packagecalls"
    end

    attr :products, Types::Array.of(Types::PackageCallsProductBlock).optional, :read_only
  end
end
