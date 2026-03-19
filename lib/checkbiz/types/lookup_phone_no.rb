# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class LookupPhoneNoContact < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :first_name, Types::String.optional
      attribute? :last_name, Types::String.optional
      attribute? :organization_number, Types::String.optional
      attribute? :legal_information, LookupNoLegalInformation.optional
      attribute? :industries, Types::Array.of(LookupNoIndustry).optional
      attribute? :nace_industries, Types::Array.of(LookupNoNaceIndustry).optional
      attribute? :credti_rating, LookupNoCreditRating.optional
      attribute? :roles, Types::Array.of(LookupNoRole).optional
      attribute? :updated, Types::String.optional
      attribute? :type, Types::String.optional
      attribute? :id, Types::String.optional
      attribute? :name, Types::String.optional
      attribute? :geography, LookupNoGeography.optional
      attribute? :contact_points, Types::Array.of(LookupNoContactPoint).optional
      attribute? :info_url, Types::String.optional
    end

  end
end
