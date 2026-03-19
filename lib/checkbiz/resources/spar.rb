# frozen_string_literal: true

require_relative "../types/spar"

module Checkbiz
  class Spar < Checkbiz::Resource
    configure do
      path "v1/spar"
    end

    attr :spar_info, Types::SparBlock.optional, :read_only
  end
end
