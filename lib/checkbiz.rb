# frozen_string_literal: true

require "rest_easy"
require "zeitwerk"

loader = Zeitwerk::Loader.for_gem
loader.collapse("#{__dir__}/checkbiz/resources")
loader.setup

module Checkbiz
  extend RestEasy

  class RequestError < RestEasy::Error; end
  class AttributeError < RestEasy::Error; end
  class ArgumentError < RestEasy::Error; end

  configure do
    base_url "https://api.checkbiz.se/api"
    max_retries 3
    authentication RestEasy::Auth::PSK.new(
      api_key: "",
      header_prefix: "Basic"
    )
    attribute_convention :CamelCase
  end
end
