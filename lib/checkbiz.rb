# frozen_string_literal: true

require "rest_easy"
require "zeitwerk"

loader = Zeitwerk::Loader.for_gem
loader.setup

module Checkbiz
  extend RestEasy

  configure do
    max_retries 3
    attribute_convention :CamelCase
  end
end
