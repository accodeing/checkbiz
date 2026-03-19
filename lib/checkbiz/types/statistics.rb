# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class BasicBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :region, Types::String.optional
      attribute? :age_group, Types::String.optional
      attribute? :amount_total, Types::Integer.optional
      attribute? :amount_men, Types::Integer.optional
      attribute? :amount_female, Types::Integer.optional
      attribute? :amount_household, Types::Integer.optional
    end

    class EconomyBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :region, Types::String.optional
      attribute? :age_group, Types::String.optional
      attribute? :average_salary_all, Types::Integer.optional
      attribute? :average_salary_male, Types::Integer.optional
      attribute? :average_salary_female, Types::Integer.optional
      attribute? :average_income_all, Types::Integer.optional
      attribute? :average_income_male, Types::Integer.optional
      attribute? :average_income_female, Types::Integer.optional
    end

  end
end
