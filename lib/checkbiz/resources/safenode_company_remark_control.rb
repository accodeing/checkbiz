# frozen_string_literal: true

require_relative "../types/safenode_company_remark_control"

module Checkbiz
  class SafenodeCompanyRemarkControl < Checkbiz::Resource
    configure do
      path "v1/safenodecompanyremarkcontrol"
    end

    attr :company_remark_control, Types::SafenodeCompanyRemarkControl.optional, :read_only
    attr :pdf, Types::String.optional, :read_only
  end
end
