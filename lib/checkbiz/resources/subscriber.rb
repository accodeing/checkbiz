# frozen_string_literal: true

require_relative "../types/subscriber"

module Checkbiz
  class Subscriber < Checkbiz::Resource
    configure do
      path "v1/subscriber"
    end

    attr :person_basic_result, Types::SubscriberPersonBasicBlock.optional, :read_only
    attr :company_basic_result, Types::SubscriberCompanyBasicBlock.optional, :read_only
    attr :subscriber_info, Types::SubscriberInfoBlock.optional, :read_only
    attr :query, Types::SubscriberQueryBlock.optional, :read_only
    attr :subscriber_info_extended, Types::SubscriberInfoExtendedBlock.optional, :read_only
  end
end
