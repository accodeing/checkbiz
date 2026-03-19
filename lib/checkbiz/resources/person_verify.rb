# frozen_string_literal: true

require_relative "../types/person_verify"

module Checkbiz
  class PersonVerify < Checkbiz::Resource
    configure do
      path "v1/personverify"
    end

    attr :matches, Types::Array.of(Types::PersonVerifyMatch).optional, :read_only
    attr :query, Types::PersonVerifyQuery.optional, :read_only
    attr :matched_step, Types::Integer.optional, :read_only
  end
end
