# frozen_string_literal: true

require_relative "../types/person_information_list"

module Checkbiz
  class PersonInformationList < Checkbiz::Resource
    configure do
      path "v1/personinformationlist"
    end

    attr :records_returned, Types::Integer.optional, :read_only
    attr :records, Types::Array.of(Types::PersonInformationListPersonBlock).optional, :read_only
  end
end
