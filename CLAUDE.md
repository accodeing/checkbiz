# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

Ruby client gem for the Checkbiz API (Swedish person and company data), built on Accodeing's `rest-easy` gem. It targets Checkbiz's v2 API only and covers person and company lookup.

## Commands

```bash
bundle install
bundle exec rspec                                     # full suite
bundle exec rspec spec/checkbiz/some_spec.rb          # one file
bundle exec rspec spec/checkbiz/some_spec.rb:12       # one example
```

There is no Rakefile and no linter configured. `.tool-versions` pins the development Ruby; the gem itself supports Ruby >= 3.2 (gemspec).

## Architecture

`lib/checkbiz.rb` — `Checkbiz` extends `RestEasy`, which supplies `configure`, the Faraday connection and the HTTP verbs. The global config sets the v2 base URL (the only place it is defined), retries and camelCase JSON attributes. `Checkbiz.authenticate_with` installs `Checkbiz::Auth::Bearer`, rest-easy's auth strategy, around a `Checkbiz::Auth::AccessToken`, which fetches and renews the token. Retries of 429s (and of 5xx, timeouts and failed connections for GET only, since rest-easy treats POST as non-idempotent) are rest-easy's `retry_transient_errors`, turned on in `configure`. Lookups are POST, so a 5xx on a lookup is not retried. Zeitwerk loads everything else under `lib/checkbiz/`, so file paths must match constant names.

Resources inherit from `Checkbiz::Resource`, which turns Checkbiz's empty strings into `nil`. Every lookup is a POST with a JSON body, so `Checkbiz::Resource.find` posts the resource's `key` attribute to `config.path` instead of using rest-easy's GET-based `find`. A resource declares its identifier with `key`, e.g. `key :personal_number, String`.

A resource's attributes come from its endpoint's response schema in `docs/checkbiz-v2-<date>.yml`, Checkbiz's published spec (<https://api-docs.checkbiz.se/docs/v2/apidocs.html>) trimmed to the endpoints the gem uses. When Checkbiz publishes a new version, trim it the same way (keep our endpoints and the schemas they reference, nothing else), diff it against ours, and update the resources and the file. Our account can only call `ping`, `docs`, `person/base` and `company/base`; every other endpoint answers 403.

Callers should never see rest-easy: errors raised out of the gem are `Checkbiz::Error` subclasses (defined in `lib/checkbiz.rb`), never `RestEasy::*` or `Faraday::*`. `Checkbiz::ErrorTranslation` does this for the HTTP verbs and for parsing.

## Tests

Specs replay VCR cassettes from `spec/vcr_cassettes/` (requests matched on method, URI and body, record mode `:new_episodes`, `Authorization` header and access tokens filtered out). Credentials come from the environment, loaded by dotenv from `.env.test.local` (gitignored, real credentials go here) then `.env.test`. `spec_helper` authenticates before every example, so every cassette records its own token request. To re-record a cassette, delete it and run its spec with valid credentials, then check the cassette contains no credentials or tokens before committing it.

The test account only sees Checkbiz's fixed test dataset, e.g. person `198510102398` and company `5555555555`. Other IDs give a 404.
