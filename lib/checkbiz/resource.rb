# frozen_string_literal: true

module Checkbiz
  class Resource < RestEasy::Resource
    extend ErrorTranslation

    # Checkbiz sends an empty string for anything it doesn't know.
    before_parse do |data|
      data.is_a?(::Hash) ? data.transform_values { |value| (value == "") ? nil : value } : data
    end

    def self.parse(api_data)
      with_translated_errors { super }
    end

    # Checkbiz looks entities up with a POST carrying the key in the body, not a GET to path/id.
    def self.find(id)
      key = all_attribute_definitions.fetch(key_attribute_name)
      response = post(path: config.path, body: {key.api_name => id.to_s})
      raise Checkbiz::Error, "Unexpected response from Checkbiz: #{response.to_s[0, 200]}" unless response.is_a?(::Hash)

      parse(response)
    end
  end
end
