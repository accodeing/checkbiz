# frozen_string_literal: true

require_relative "../types/bolagsverket"

module Checkbiz
  class Bolagsverket < Checkbiz::Resource
    configure do
      path "v1/bolagsverket"
    end

    attr :arende_forteckning_a6, Types::ArendeForteckningBlock.optional, :read_only
    attr :arende_forteckning_a15, Types::ArendeInformationBlock.optional, :read_only
    attr :samlad_arende_forteckning_a30, Types::ArendeForteckningBlockA30.optional, :read_only
    attr :person_information_p25, Types::PersonInformationBlock.optional, :read_only
    attr :aktiekapitalforandring, Types::AktiekapitalforandringBlock.optional, :read_only
  end
end
