# frozen_string_literal: true

require_relative "../types/pts"

module Checkbiz
  class PtsInfo < Checkbiz::Resource
    configure do
      path "v1/ptsinfo"
    end

    attr :pts_info, Types::PTSBasicBlock.optional, :read_only
  end
end
