# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class CompanyAnnualReportsDocument < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :ref_no, Types::String.optional
      attribute? :period, Types::String.optional
      attribute? :type, Types::String.optional
    end

  end
end
