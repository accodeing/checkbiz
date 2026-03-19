# frozen_string_literal: true

require_relative "../types/statistics"

module Checkbiz
  class Statistics < Checkbiz::Resource
    configure do
      path "v1/statistics"
    end

    attr :economy_block_list, Types::Array.of(Types::EconomyBlock).optional, :read_only
    attr :basic_block_list, Types::Array.of(Types::BasicBlock).optional, :read_only
  end
end
