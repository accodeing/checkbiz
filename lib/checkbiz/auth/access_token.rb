# frozen_string_literal: true

require "faraday"
require "json"

module Checkbiz
  module Auth
    class AccessToken
      TOKEN_PATH = "authentication/token"
      EXPIRY_MARGIN_IN_SECONDS = 30
      MONOTONIC_CLOCK = -> { Process.clock_gettime(Process::CLOCK_MONOTONIC) }

      def initialize(username:, password:, base_url: Checkbiz.config.base_url, clock: MONOTONIC_CLOCK)
        @clock = clock
        @connection = Faraday.new(
          url: base_url,
          request: {open_timeout: Checkbiz::OPEN_TIMEOUT_IN_SECONDS, timeout: Checkbiz::TIMEOUT_IN_SECONDS}
        ) do |f|
          f.request :authorization, :basic, username, password
        end
        @mutex = Mutex.new
      end

      def value
        @mutex.synchronize do
          fetch if @value.nil? || @clock.call >= @expires_at
          @value
        end
      end

      # Another thread may already have replaced the rejected token, so only drop it if it is still current.
      def invalidate(rejected_value)
        @mutex.synchronize { @value = nil if rejected_value == @value }
      end

      private

      def fetch
        response = @connection.post(TOKEN_PATH)
        raise Checkbiz::RequestError.for(response) unless response.success?

        case parse(response.body)
        in {access_token: String => value, expires_in: Integer => expires_in}
          @value = value
          @expires_at = @clock.call + expires_in - EXPIRY_MARGIN_IN_SECONDS
        else
          raise Checkbiz::Error, "Unexpected response from Checkbiz: #{response.body.to_s[0, 200]}"
        end
      rescue Faraday::Error => e
        raise Checkbiz::ConnectionError, "Could not reach Checkbiz: #{e.message}"
      end

      def parse(body)
        JSON.parse(body.to_s, symbolize_names: true)
      rescue JSON::ParserError
        nil
      end
    end
  end
end
