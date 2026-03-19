# frozen_string_literal: true

require_relative "../types/signatory"

module Checkbiz
  class Signatory < Checkbiz::Resource
    configure do
      path "v1/signatory"
    end

    attr :signatory_person, Types::SignatoryPersonBlock.optional, :read_only
    attr :signatory_organization, Types::SignatoryOrganizationBlock.optional, :read_only
    attr :signatory_right_to_sign, Types::SignatoryRightToSignBlock.optional, :read_only
  end
end
