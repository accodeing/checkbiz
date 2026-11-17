# Checkbiz

[![Gem Version](https://badge.fury.io/rb/checkbiz.svg?icon=si%3Arubygems)](https://badge.fury.io/rb/checkbiz)

Ruby wrapper for the [Checkbiz API](https://api-docs.checkbiz.se/docs/v2/apidocs.html), built on [rest-easy](https://github.com/accodeing/rest-easy).

Provides typed access to Swedish person and company information.

Checkbiz replaces its current API with a new one (v2) at the turn of the year 2026/2027. The gem now supports v2 only, with person and company lookup.

## Installation

```ruby
gem "checkbiz", path: "../checkbiz"       # local
gem "checkbiz", git: "https://github.com/accodeing/checkbiz" # git
```

## Usage

```ruby
Checkbiz.authenticate_with(username: ENV["CHECKBIZ_USERNAME"], password: ENV["CHECKBIZ_PASSWORD"])

Checkbiz.ping # => true

person = Checkbiz::Person.find("198510102398")
person.first_names # => "Adam August"
person.fbf_address # => "Testgatan 123"
person.birth_date  # => #<Date: 1985-10-10>

company = Checkbiz::Company.find("5555555555")
company.name    # => "Exempelbolaget AB"
company.form    # => "aktiebolag"
company.address # => "Testgatan 123"
```

Attributes are named after Checkbiz's fields in snake_case. For a person, `fbf_*` is the population register ("folkbokföring") address and `sp_*` the special postal address. A company's `form` and `status` are Checkbiz's slugs, such as `aktiebolag` and `konkurs-inledd`. Fields Checkbiz sends as empty strings, meaning unknown, are `nil`.

Errors are `Checkbiz::Error` or one of its subclasses. `Checkbiz::Error` itself means Checkbiz answered with something unexpected, such as an HTML page instead of JSON.

- `Checkbiz::RequestError`: Checkbiz answered with an error, e.g. a 404 for a personal number it doesn't know. `#response` holds the response, and the message includes Checkbiz's error messages.
- `Checkbiz::AuthenticationError`: a subclass of `RequestError`, raised when the credentials are rejected.
- `Checkbiz::ConnectionError`: Checkbiz couldn't be reached, or didn't connect within 5 seconds or answer within 10.
- `Checkbiz::AttributeError`: a response didn't fit a resource's attributes.

## Authentication

The gem handles authentication. Given a Checkbiz username and password, `Checkbiz::Auth::AccessToken` fetches a token from `/v2/authentication/token` and reuses it until shortly before it expires (tokens last an hour). `Checkbiz::Auth::Bearer` sends it with every request, and after a 401 it drops the token so the retry fetches a new one.

## Retries

Failed requests are retried up to three times, using rest-easy's `retry_transient_errors`:

- A 429 is retried after waiting as long as Checkbiz's `Retry-After` header asks (1 second without one). If it asks for more than 10 seconds, the request raises instead.
- A 5xx, a timeout or a failed connection is retried for `Checkbiz.ping` only. Lookups are POST requests, and rest-easy only repeats those on a 429, so a lookup that gets a 5xx raises right away.
- A 401 is retried with a new token.
- Anything else raises right away.

The token request itself isn't retried: a 429, 5xx or timeout while fetching a token raises at once. A process fetches a token about once an hour.

To raise on a 429, 5xx, timeout or failed connection too, without retrying:

```ruby
Checkbiz.configure { retry_transient_errors false }
```

## Tokens and processes

Each process fetches and keeps its own token. That is safe because Checkbiz does not invalidate older tokens when it issues a new one, so several app processes or servers can use the same credentials at once.

## Development

```bash
bundle install
bundle exec rspec
```

Tests use VCR cassettes recorded against the Checkbiz API. Credentials are read from the environment, loaded from `.env.test.local` (gitignored) or `.env.test`. To re-record a cassette, delete it and run its spec with valid credentials in `.env.test.local`.

## License

MIT
