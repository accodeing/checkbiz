# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class PersonInformationListPersonBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :ssn_status, Types::String.optional
      attribute? :name, PersonNameBlock.optional
      attribute? :basic, PersonBasicBlock.optional
      attribute? :ssn, SSNBlock.optional
      attribute? :idnummer, IdnummerBlock.optional
    end

  end
end
