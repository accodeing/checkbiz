# frozen_string_literal: true

require_relative "../types/person_credit_template"

module Checkbiz
  class PersonCreditTemplate < Checkbiz::Resource
    configure do
      path "v1/personcredittemplate"
    end

    attr :credit_template, Types::PersonCreditTemplateBlock.optional, :read_only

    class << self
      def call_v2(**params)
        package = params.delete(:package)
        headers = package ? { "Package" => package } : {}
        api_params = params.transform_keys { |k| PARAM_CONVENTION.serialise(k) }
        response = get(path: "v2/personcredittemplate", params: api_params, headers:)
        parse(response)
      end
    end
  end
end
