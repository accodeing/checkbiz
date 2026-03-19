# frozen_string_literal: true

require_relative "../types/common"

module Checkbiz
  class UrlSearch < Checkbiz::Resource
    configure do
      path "v1/urlsearch"
    end

    attr :person_report, Types::UrlPersonBlock.optional, :read_only
    attr :company_report, Types::UrlCompanyBlock.optional, :read_only
    attr :catalog, Types::UrlCatalogBlock.optional, :read_only
    attr :salary_verification, Types::UrlLonekollenBlock.optional, :read_only
  end
end
