# frozen_string_literal: true

require_relative "../types/geomatic"

module Checkbiz
  class Geomatics < Checkbiz::Resource
    configure do
      path "v1/geomaticse"
    end

    attr :geomatic_se, Types::GeomaticSEBlock.optional, :read_only
  end
end
