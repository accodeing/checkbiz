# frozen_string_literal: true

module Checkbiz
  module ErrorTranslation
    private

    def with_translated_errors
      yield
    rescue RestEasy::RequestError => e
      raise Error, e.message unless e.response

      raise RequestError.for(e.response)
    rescue RestEasy::AttributeError => e
      raise AttributeError, e.message
    rescue Faraday::ParsingError => e
      raise Error, "Unexpected response from Checkbiz: #{e.message}"
    rescue Faraday::Error => e
      raise ConnectionError, "Could not reach Checkbiz: #{e.message}"
    end
  end
end
