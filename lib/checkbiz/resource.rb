# frozen_string_literal: true

module Checkbiz
  class Resource < RestEasy::Resource
    PARAM_CONVENTION = RestEasy::Conventions::PascalCase.new

    before_parse do |data, meta|
      meta.response_code = data.delete("responseCode")
      meta.response_message = data.delete("responseMessage")
      next data
    end

    class << self
      def call(**params)
        package = params.delete(:package)
        headers = package ? { "Package" => package } : {}
        api_params = params.transform_keys { |k| PARAM_CONVENTION.serialise(k) }
        response = get(path: config.path, params: api_params, headers:)
        parse(response)
      end
    end
  end
end
