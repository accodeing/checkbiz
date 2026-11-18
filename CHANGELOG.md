# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to
[Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [2.0.0] - 2026-11-18

A rewrite for Checkbiz's v2 API, which replaces the current API at the turn
of the year 2026/2027. Nothing from 1.0.0 carries over; see the README for
how to authenticate and look things up.

### Added

- **`Checkbiz.authenticate_with(username:, password:)`.** v2 authenticates
  with a Bearer token, which the gem fetches with your credentials, shares
  between threads and renews before it expires, or as soon as Checkbiz
  rejects it.
- **`Checkbiz::Person.find` and `Checkbiz::Company.find`**, which look up a
  person by personal number and a company by organisation number and return
  every field Checkbiz sends. Fields Checkbiz doesn't know are `nil`, and
  dates are `Date`, except a person's `deregistration_date`, which is a string
  because Checkbiz sends `00` for an unknown month or day.
- **`Checkbiz.ping`**, which checks the credentials and the connection.
- **Errors of the gem's own:** `Checkbiz::RequestError` (with the response),
  `Checkbiz::AuthenticationError`, `Checkbiz::ConnectionError` and
  `Checkbiz::AttributeError`, all subclasses of `Checkbiz::Error`. Nothing
  from rest-easy or Faraday reaches the caller.
- **Retries and timeouts.** 429s are retried after Checkbiz's `Retry-After`,
  and requests give up after 5 seconds connecting or 10 reading.

### Removed

- **Every resource for the old API**, and with them `Checkbiz.configure`
  with `RestEasy::Auth::PSK`, the `.call(..., package:)` interface and
  `Checkbiz::ArgumentError`.

### Changed

- **Requires Ruby 3.2** (was 3.1) and rest-easy `~> 1.5` (was `~> 1.0.0`).
- **`Checkbiz::RequestError` and `Checkbiz::AttributeError` are no longer
  `RestEasy::Error` subclasses**, so code rescuing `RestEasy::Error` no longer
  catches them; rescue `Checkbiz::Error` instead.
- **The gem no longer depends on dry-struct.**

## [1.0.0] - 2026-03-19

First release, for Checkbiz's original API.
