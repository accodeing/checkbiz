# frozen_string_literal: true

require_relative "../types/company_credit_template"

module Checkbiz
  class CompanyCreditTemplate < Checkbiz::Resource
    configure do
      path "v1/companycredittemplate"
    end

    attr :credit_template, Types::CompanyCreditTemplateBlock.optional, :read_only

    class << self
      def call_v2(**params)
        package = params.delete(:package)
        headers = package ? { "Package" => package } : {}
        api_params = params.transform_keys { |k| PARAM_CONVENTION.serialise(k) }
        response = get(path: "v2/companycredittemplate", params: api_params, headers:)
        parse(response)
      end
    end
  end
end
