# frozen_string_literal: true

require_relative "../types/subscriber_list"

module Checkbiz
  class SubscriberList < Checkbiz::Resource
    configure do
      path "v1/subscriberlist"
    end

    attr :records_returned, Types::Integer.optional, :read_only
    attr :subsbriber_info_key_block_list, Types::Array.of(Types::SubsbriberInfoKeyBlock).optional, :read_only
    attr :subsbriber_info_basic_block_list, Types::Array.of(Types::SubsbriberInfoBasicBlock).optional, :read_only
    attr :subsbriber_info_extended_block_list, Types::Array.of(Types::SubsbriberInfoExtendedBlock).optional, :read_only
  end
end
