# frozen_string_literal: true

require_relative "../types/company_event"

module Checkbiz
  class CompanyEvent < Checkbiz::Resource
    configure do
      path "v1/companyevent"
    end

    attr :pagination, Types::EventPagination.optional, :read_only
    attr :new_registered_companies_basic, Types::Array.of(Types::CompanyEventBasicBlock).optional, :read_only
    attr :new_registered_companies_key, Types::Array.of(Types::CompanyEventKeyBlock).optional, :read_only
    attr :liquidated_companies_basic, Types::Array.of(Types::CompanyEventBasicBlock).optional, :read_only
    attr :liquidated_companies_key, Types::Array.of(Types::CompanyEventKeyBlock).optional, :read_only
    attr :financial_updated_companies_basic, Types::Array.of(Types::CompanyEventBasicBlock).optional, :read_only
    attr :financial_updated_companies_key, Types::Array.of(Types::CompanyEventKeyBlock).optional, :read_only
    attr :status_change_date_companies_key, Types::Array.of(Types::CompanyEventKeyBlock).optional, :read_only
    attr :status_change_date_companies_basic, Types::Array.of(Types::CompanyEventBasicBlock).optional, :read_only
    attr :beneficial_owners_change_date_companies_key, Types::Array.of(Types::CompanyEventKeyBlock).optional, :read_only
    attr :beneficial_owners_change_date_companies_basic, Types::Array.of(Types::CompanyEventBasicBlock).optional, :read_only
    attr :address_change_date_companies_key, Types::Array.of(Types::CompanyEventKeyBlock).optional, :read_only
    attr :address_change_date_companies_basic, Types::Array.of(Types::CompanyEventBasicBlock).optional, :read_only
    attr :company_board_change_date_companies_key, Types::Array.of(Types::CompanyEventKeyBlock).optional, :read_only
    attr :company_board_change_date_companies_basic, Types::Array.of(Types::CompanyEventBasicBlock).optional, :read_only
    attr :company_annual_report_created_date_key, Types::Array.of(Types::CompanyEventKeyBlock).optional, :read_only
    attr :company_annual_report_created_date_basic, Types::Array.of(Types::CompanyEventBasicBlock).optional, :read_only
  end
end
