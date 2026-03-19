# frozen_string_literal: true

require_relative "../types/person_event"

module Checkbiz
  class PersonEvent < Checkbiz::Resource
    configure do
      path "v1/personevent"
    end

    attr :pagination, Types::EventPagination.optional, :read_only
    attr :change_date_persons_key, Types::Array.of(Types::PersonEventKeyBlock).optional, :read_only
    attr :name_adress_change_persons_basic, Types::Array.of(Types::PersonEventBasicBlock).optional, :read_only
    attr :name_adress_change_persons_key, Types::Array.of(Types::PersonEventKeyBlock).optional, :read_only
    attr :reg_date_change_persons_key, Types::Array.of(Types::PersonEventKeyBlock).optional, :read_only
    attr :reg_date_change_persons_basic, Types::Array.of(Types::PersonEventBasicBlock).optional, :read_only
  end
end
