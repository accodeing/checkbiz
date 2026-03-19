# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class CompanyInformationListCompanyBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :basic, CompanyBasicBlock.optional
    end

  end
end
