# frozen_string_literal: true

require "dotenv"
Dotenv.load(".env.test.local", ".env.test")

require "checkbiz"
require "vcr"
require "webmock/rspec"

require "faraday/net_http"
Faraday.default_adapter = :net_http

Checkbiz.configure do
  authentication RestEasy::Auth::PSK.new(
    api_key: ENV.fetch("API_KEY"),
    header_prefix: "Basic"
  )
end

VCR.configure do |c|
  c.cassette_library_dir = "spec/vcr_cassettes"
  c.hook_into :webmock
  c.filter_sensitive_data("<AUTHORIZATION>") do |interaction|
    interaction.request.headers["Authorization"]&.first
  end
  c.default_cassette_options = {
    match_requests_on: %i[method uri],
    record: :new_episodes
  }
end
