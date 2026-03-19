# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class CompanyWorksiteBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :organization_number, Types::String.optional
      attribute? :company_name, Types::String.optional
      attribute? :number_of_worksites, Types::Integer.optional
      attribute? :worksite, WorksiteModel.optional
    end

  end
end
