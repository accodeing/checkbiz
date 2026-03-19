# frozen_string_literal: true

require_relative "../types/company_worksite"

module Checkbiz
  class CompanyWorksite < Checkbiz::Resource
    configure do
      path "v1/companyworksite"
    end

    attr :worksite, Types::CompanyWorksiteBlock.optional, :read_only
  end
end
