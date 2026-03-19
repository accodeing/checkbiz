# frozen_string_literal: true

require_relative "../types/safenode_person_remark_control"

module Checkbiz
  class SafenodePersonRemarkControl < Checkbiz::Resource
    configure do
      path "v1/safenodepersonremarkcontrol"
    end

    attr :person_remark_control, Types::SafenodePersonRemarkControl.optional, :read_only
    attr :pdf, Types::String.optional, :read_only
  end
end
