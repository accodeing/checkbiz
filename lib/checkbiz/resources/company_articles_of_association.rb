# frozen_string_literal: true

module Checkbiz
  class CompanyArticlesOfAssociation < Checkbiz::Resource
    configure do
      path "v1/companyarticlesofassociation"
    end

    attr :document, Types::String.optional, :read_only
    attr :type, Types::String.optional, :read_only
    attr :encoding, Types::String.optional, :read_only
  end
end
