# Checkbiz

[![Gem Version](https://badge.fury.io/rb/checkbiz.svg?icon=si%3Arubygems)](https://badge.fury.io/rb/checkbiz)

Ruby wrapper for the [Checkbiz API](https://api.checkbiz.se), built on [rest-easy](https://github.com/accodeing/rest-easy).

Provides typed access to Swedish person, company, and credit information services.

## Installation

```ruby
gem "checkbiz", path: "../checkbiz"       # local
gem "checkbiz", git: "https://github.com/accodeing/checkbiz" # git
```

## Configuration

```ruby
Checkbiz.configure do
  authentication RestEasy::Auth::PSK.new(
    api_key: ENV["CHECKBIZ_API_KEY"],
    header_prefix: "Basic"
  )
end
```

## Usage

Every endpoint is a resource class with a `.call` method. Pass query parameters as keyword arguments and the package name via `package:`.

```ruby
# Company information
company = Checkbiz::CompanyInformation.call(
  organization_number: "5564866286",
  package: "foretagadress"
)
company.name          # => PersonNameBlock struct
company.basic         # => CompanyBasicBlock struct
company.meta.response_code # => "Ok"

# Person information
person = Checkbiz::PersonInformation.call(
  ssn: "194907299289",
  package: "personadress"
)
person.basic          # => PersonBasicBlock struct
person.ssn_status     # => "Active"

# Search
results = Checkbiz::CompanySearch.call(
  who: "Accodeing",
  max_nr_records: 10,
  package: "sokforetag"
)
results.basic_result  # => CompanySearchBasicBlock struct

# Account info (no package required)
info = Checkbiz::PackageInformation.call
info.products         # => Array of PackageInformationProductBlock
```

### Response metadata

`responseCode` and `responseMessage` are extracted into `meta` on every response:

```ruby
result = Checkbiz::CompanyInformation.call(organization_number: "5564866286", package: "foretagadress")
result.meta.response_code    # => "Ok"
result.meta.response_message # => nil
```

### V2 endpoints

Some endpoints have a v2 variant with additional fields:

```ruby
Checkbiz::CompanyCreditTemplate.call_v2(
  organization_number: "5564866286",
  package: "bas"
)
```

### Custom lists (POST/PUT)

```ruby
Checkbiz::CustomList.call(package: "bas")                    # GET
Checkbiz::CustomList.add(items, package: "bas")              # POST
Checkbiz::CustomList.remove(items, package: "bas")           # PUT
```

## Available resources

### Account
- `PackageInformation` - list authorized products and packages
- `PackageCalls` - usage statistics

### Company
- `CompanyInformation` - company details by org number
- `CompanyInformationList` - batch lookup
- `CompanyCreditTemplate` / `call_v2` - credit reports
- `CompanyBeneficialOwner` - beneficial ownership
- `CompanyAnnualReports` - list annual reports
- `CompanyAnnualReport` - fetch single report by ref number
- `CompanyArticlesOfAssociation` - articles of association (PDF)
- `CompanyCertificatesOfRegistration` - registration certificate (PDF)
- `CompanyWorksite` - worksite info by CFAR number
- `CompanySearch` - basic company search
- `CompanySearchAdvanced` - advanced company search
- `CompanyAutocomplete` - autocomplete suggestions
- `CompanyEvent` - company events by date range

### Person
- `PersonInformation` - person details by SSN
- `PersonInformationList` - batch lookup
- `PersonCreditTemplate` / `call_v2` - credit reports
- `PersonBeneficialOwner` - beneficial ownership
- `PersonSearch` - basic person search
- `PersonSearchAdvanced` - advanced person search
- `PersonEvent` - person events by date range
- `PersonVerify` - identity verification

### Lookups
- `LookupIdNo` - lookup by ID number
- `LookupCompanyNo` - lookup by company number
- `LookupPhoneNo` - lookup by phone number
- `AddressInformation` - address lookup
- `Nix` - NIX registry check

### Specialized
- `Bolagsverket` - Swedish Companies Registration Office data
- `Signatory` - signatory information
- `Spar` - SPAR registry
- `PtsInfo` - PTS phone data
- `Geomatics` - geographic data
- `Statistics` - income and economic statistics
- `DataFactoryPersonSearch` - extended person search
- `Subscriber` / `SubscriberList` - subscriber info
- `SearchNo` / `ExtendedSearchNo` - Norwegian registry search
- `SafenodePersonCreditReport` / `SafenodePersonRemarkControl` - Safenode person reports
- `SafenodeCompanyCreditReport` / `SafenodeCompanyRemarkControl` - Safenode company reports
- `Url` / `UrlSearch` - report URL generation
- `CustomList` - custom list management (GET/POST/PUT)
- `Heartbeat` - API health check

## Development

```bash
bundle install
bundle exec rspec
```

Tests use VCR cassettes recorded against the staging API. To re-record, delete `spec/vcr_cassettes/` and run the suite with a valid API key configured in `spec/spec_helper.rb`.

## License

MIT
