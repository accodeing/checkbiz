# frozen_string_literal: true

require "dotenv"
Dotenv.load(".env.test.local", ".env.test")

require "checkbiz"
require "vcr"
require "webmock/rspec"

require "faraday/net_http"
Faraday.default_adapter = :net_http

VCR.configure do |c|
  c.cassette_library_dir = "spec/vcr_cassettes"
  c.hook_into :webmock
  c.filter_sensitive_data("<AUTHORIZATION>") do |interaction|
    interaction.request.headers["Authorization"]&.first
  end
  c.filter_sensitive_data("<ACCESS_TOKEN>") do |interaction|
    next unless interaction.request.uri.end_with?(Checkbiz::Auth::AccessToken::TOKEN_PATH)

    JSON.parse(interaction.response.body)["access_token"]
  rescue JSON::ParserError
    nil
  end
  c.default_cassette_options = {
    match_requests_on: %i[method uri body],
    record: :new_episodes
  }
end

RSpec.configure do |config|
  # A new token per example, so every cassette holds its own token request.
  config.before do
    Checkbiz.authenticate_with(username: ENV.fetch("CHECKBIZ_USERNAME"), password: ENV.fetch("CHECKBIZ_PASSWORD"))
  end
end
