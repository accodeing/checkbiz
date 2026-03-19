# frozen_string_literal: true

module Checkbiz
  class Heartbeat < Checkbiz::Resource
    configure do
      path "../heartbeat"
    end
  end
end
