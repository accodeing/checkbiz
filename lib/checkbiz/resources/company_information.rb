# frozen_string_literal: true

require_relative "../types/company_information"

module Checkbiz
  class CompanyInformation < Checkbiz::Resource
    configure do
      path "v1/companyinformation"
    end

    attr :name, Types::CompanyNameBlock.optional, :read_only
    attr :basic, Types::CompanyBasicBlock.optional, :read_only
    attr :extended, Types::CompanyExtendedBlock.optional, :read_only
    attr :remark, Types::CompanyRemarkBlock.optional, :read_only
    attr :remark_extended, Types::CompanyRemarkExtendedBlock.optional, :read_only
    attr :safenode_remark, Types::SafenodeCompanyRemarkBlock.optional, :read_only
    attr :safenode_remark_extended, Types::SafenodeCompanyRemarkExtendedBlock.optional, :read_only
    attr :phone_numbers, Types::CompanyPhoneNumberBlock.optional, :read_only
    attr :economic_basic, Types::CompanyEconomicBasicBlock.optional, :read_only
    attr :economic_basic_company_group, Types::CompanyEconomicBasicBlock.optional, :read_only
    attr :economic_extended, Types::CompanyEconomicExtendedBlock.optional, :read_only
    attr :economic_extended_company_group, Types::CompanyEconomicExtendedBlock.optional, :read_only
    attr :key_numbers, Types::CompanyKeyNumbersBlock.optional, :read_only
    attr :key_numbers_company_group, Types::CompanyKeyNumbersBlock.optional, :read_only
    attr :company_board_of_directors, Types::CompanyBoardOfDirectorsBlock.optional, :read_only
    attr :economic_basic_list, Types::Array.of(Types::CompanyEconomicBasicBlock).optional, :read_only
    attr :economic_basic_list_company_group, Types::Array.of(Types::CompanyEconomicBasicBlock).optional, :read_only
    attr :economic_extended_list, Types::Array.of(Types::CompanyEconomicExtendedBlock).optional, :read_only
    attr :economic_extended_list_company_group, Types::Array.of(Types::CompanyEconomicExtendedBlock).optional, :read_only
    attr :key_numbers_list, Types::Array.of(Types::CompanyKeyNumbersBlock).optional, :read_only
    attr :key_numbers_list_company_group, Types::Array.of(Types::CompanyKeyNumbersBlock).optional, :read_only
    attr :worksites, Types::CompanyWorksitesBlock.optional, :read_only
    attr :controlled_companies, Types::ControlledCompaniesBlock.optional, :read_only
    attr :company_group_basic, Types::CompanyGroupBasicBlock.optional, :read_only
    attr :company_group_extended, Types::CompanyGroupExtendedBlock.optional, :read_only
    attr :beneficial_owners, Types::Array.of(Types::CompanyBeneficialOwnerPersonBlock).optional, :read_only
    attr :beneficial_owner_status, Types::CompanyBeneficialOwnerStatusBlock.optional, :read_only
    attr :company_articles_of_association, Types::CompanyArticlesOfAssociationBlock.optional, :read_only
    attr :company_board_of_directors_history, Types::CompanyBoardOfDirectorsHistoryBlock.optional, :read_only
  end
end
