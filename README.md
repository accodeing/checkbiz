# Checkbiz

[![Gem Version](https://badge.fury.io/rb/checkbiz.svg?icon=si%3Arubygems)](https://badge.fury.io/rb/checkbiz)

Ruby wrapper for the [Checkbiz API](https://api-docs.checkbiz.se/docs/v2/apidocs.html), built on [rest-easy](https://github.com/accodeing/rest-easy).

Provides typed access to Swedish person and company information.

Checkbiz replaces its current API with a new one (v2) at the turn of the year 2026/2027. The resources for the current API have been removed, and person and company lookup are being rebuilt on v2.

## Installation

```ruby
gem "checkbiz", path: "../checkbiz"       # local
gem "checkbiz", git: "https://github.com/accodeing/checkbiz" # git
```

## Development

```bash
bundle install
bundle exec rspec
```

Tests use VCR cassettes recorded against the Checkbiz API. Credentials are read from the environment, loaded from `.env.test.local` (gitignored) or `.env.test`. To re-record a cassette, delete it and run its spec with valid credentials in `.env.test.local`.

## License

MIT
