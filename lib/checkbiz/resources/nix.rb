# frozen_string_literal: true

require_relative "../types/subscriber_nix"

module Checkbiz
  class Nix < Checkbiz::Resource
    configure do
      path "v1/nix"
    end
  end
end
