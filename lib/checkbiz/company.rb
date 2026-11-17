# frozen_string_literal: true

module Checkbiz
  class Company < Checkbiz::Resource
    configure do
      path "company/base"
    end

    key :organization_number, String

    attr :name, String
    attr :form, String
    attr :status, String
    attr :status_change_date, Date
    attr :registration_date, Date
    attr :deregistration_date, Date
    attr :seat_municipality_code, String
    attr :care_of, String
    attr :address, String
    attr :zip, String
    attr :city, String
    attr :country_code, String
    attr :phone_number, String
    attr :email, String
  end
end
