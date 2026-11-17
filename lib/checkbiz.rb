# frozen_string_literal: true

require "rest_easy"
require "zeitwerk"

loader = Zeitwerk::Loader.for_gem
loader.setup

module Checkbiz
  extend RestEasy
  extend ErrorTranslation

  OPEN_TIMEOUT_IN_SECONDS = 5
  TIMEOUT_IN_SECONDS = 10

  configure do
    base_url "https://data.checkbiz.se/v2"
    max_retries 3
    retry_transient_errors true
    conversions.json_attributes = :camelCase
  end

  class << self
    def authenticate_with(username:, password:)
      config.authentication = Auth::Bearer.new(Auth::AccessToken.new(username:, password:))
    end

    %i[get post].each do |verb|
      define_method(verb) { |**options| with_translated_errors { super(**options) } }
    end
  end

  class Error < StandardError; end

  class ConnectionError < Error; end

  class AttributeError < Error; end

  class RequestError < Error
    attr_reader :response

    def self.for(response)
      (response.status == 401) ? AuthenticationError.new(response) : new(response)
    end

    def initialize(response)
      @response = response
      super("Request failed: #{response.status}#{details(response.body)}")
    end

    private

    # JSON errors carry {"errorMessages": [...]}, parsed or not; some, like 401 and 403, are plain text.
    def details(body)
      body = parse(body) if body.is_a?(String)
      messages =
        if body.is_a?(Hash) && body["errorMessages"].is_a?(Array) then body["errorMessages"]
        elsif body.is_a?(String) || body.nil? then [body]
        else [JSON.generate(body)]
        end
      text = messages.map { |message| message.to_s.strip }.reject(&:empty?).join(", ")
      text.empty? ? "" : " - #{text}"
    end

    def parse(body)
      JSON.parse(body)
    rescue JSON::ParserError
      body
    end
  end

  class AuthenticationError < RequestError; end
end
