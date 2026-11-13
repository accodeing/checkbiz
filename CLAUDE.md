# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

Ruby client gem for the Checkbiz API (Swedish person and company data), built on Accodeing's `rest-easy` gem. The gem is being moved to Checkbiz's v2 API; the resources for the old API have been removed.

## Commands

```bash
bundle install
bundle exec rspec                                     # full suite
bundle exec rspec spec/checkbiz/some_spec.rb          # one file
bundle exec rspec spec/checkbiz/some_spec.rb:12       # one example
```

There is no Rakefile and no linter configured. `.tool-versions` pins the development Ruby; the gem itself supports Ruby >= 3.1 (gemspec).

## Architecture

`lib/checkbiz.rb` — `Checkbiz` extends `RestEasy`, which supplies `configure`, the Faraday connection and the HTTP verbs. The global config sets retries and the CamelCase JSON attribute convention. Zeitwerk loads everything else under `lib/checkbiz/`, so file paths must match constant names.

## Tests

Specs replay VCR cassettes from `spec/vcr_cassettes/` (requests matched on method + URI, record mode `:new_episodes`, `Authorization` header filtered out). Credentials come from the environment, loaded by dotenv from `.env.test.local` (gitignored, real credentials go here) then `.env.test`. To re-record a cassette, delete it and run its spec with valid credentials.
