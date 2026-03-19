# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class LookupNoSeries < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :name, Types::String.optional
      attribute? :figures, Types::Array.of(Types::Float).optional
    end

    class LookupNoShareHolder < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :id, Types::String.optional
      attribute? :share, Types::Float.optional
      attribute? :name, Types::String.optional
      attribute? :birth_year, Types::Integer.optional
      attribute? :organization_number, Types::String.optional
      attribute? :country, Types::String.optional
    end

    class LookupNoFinancialData < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :type, Types::String.optional
      attribute? :name, Types::String.optional
      attribute? :currency, Types::Array.of(Types::String).optional
      attribute? :years, Types::Array.of(Types::Integer).optional
      attribute? :series, Types::Array.of(LookupNoSeries).optional
    end

    class LookupCompanyNoContact < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :share_holders, Types::Array.of(LookupNoShareHolder).optional
      attribute? :financial_data, Types::Array.of(LookupNoFinancialData).optional
      attribute? :organization_number, Types::String.optional
      attribute? :legal_information, LookupNoLegalInformation.optional
      attribute? :industries, Types::Array.of(LookupNoIndustry).optional
      attribute? :nace_industries, Types::Array.of(LookupNoNaceIndustry).optional
      attribute? :credit_rating, LookupNoCreditRating.optional
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
