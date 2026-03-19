# frozen_string_literal: true

require_relative "../types/custom_list_get"

module Checkbiz
  class CustomList < Checkbiz::Resource
    configure do
      path "v1/customlist"
    end

    attr :total_records, Types::Integer.optional, :read_only
    attr :deleted_records, Types::Integer.optional, :read_only
    attr :list, Types::Array.of(Types::CustomListItem).optional, :read_only

    class << self
      def add(items, **params)
        package = params.delete(:package)
        headers = package ? { "Package" => package } : {}
        response = post(path: config.path, body: items, headers:)
        parse(response)
      end

      def remove(items, **params)
        package = params.delete(:package)
        headers = package ? { "Package" => package } : {}
        response = put(path: config.path, body: items, headers:)
        parse(response)
      end
    end
  end
end
