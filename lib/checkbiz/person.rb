# frozen_string_literal: true

module Checkbiz
  class Person < Checkbiz::Resource
    configure do
      path "person/base"
    end

    key :personal_number, String

    attr :status, String
    attr :secret_identity, Boolean
    attr :birth_date, Date
    attr :gender, String
    attr :given_name, String
    attr :first_names, String
    attr :last_names, String
    attr :registration_date, Date
    # Not always a valid date: the month or day is 00 when it isn't known, e.g. "2026-03-00".
    attr :deregistration_date, String
    attr :county_code, String
    attr :municipality_code, String

    # Population register ("folkbokföring") address
    attr :fbf_care_of, String
    attr :fbf_address_prefix, String
    attr :fbf_address, String
    attr :fbf_zip, String
    attr :fbf_city, String

    # Special postal address
    attr :sp_care_of, String
    attr :sp_address_prefix, String
    attr :sp_address, String
    attr :sp_zip, String
    attr :sp_city, String

    attr :foreign_address1, String
    attr :foreign_address2, String
    attr :foreign_address3, String
    attr :foreign_country, String
  end
end
