# frozen_string_literal: true

require_relative "../types/person_information"

module Checkbiz
  class PersonInformation < Checkbiz::Resource
    configure do
      path "v1/personinformation"
    end

    attr :ssn_status, Types::String.optional, :read_only
    attr :registered_at_address, Types::RegisteredAtAddressBlock.optional, :read_only
    attr :registered_dogs_at_address, Types::RegisteredDogsAtAddressBlock.optional, :read_only
    attr :registered_dogs_at_address_extended, Types::RegisteredDogsAtAddressExtendedBlock.optional, :read_only
    attr :registered_vehicles_at_address, Types::RegisteredVehiclesAtAddressBlock.optional, :read_only
    attr :registered_vehicles_at_address_extended, Types::RegisteredVehiclesAtAddressExtendedBlock.optional, :read_only
    attr :name, Types::PersonNameBlock.optional, :read_only
    attr :basic, Types::PersonBasicBlock.optional, :read_only
    attr :extended, Types::PersonExtendedBlock.optional, :read_only
    attr :company_involvements, Types::CompanyInvolvementBlock.optional, :read_only
    attr :company_involvements_extended, Types::CompanyInvolvementExtendedBlock.optional, :read_only
    attr :company_involvement_history, Types::CompanyInvolvementHistoryBlock.optional, :read_only
    attr :phone_numbers, Types::PhoneNumberBlock.optional, :read_only
    attr :ssn, Types::SSNBlock.optional, :read_only
    attr :previous_address, Types::PreviousAddressBlock.optional, :read_only
    attr :previous_adresses, Types::PreviousAdressesBlock.optional, :read_only
    attr :ssn_status_block, Types::SSNStatusBlock.optional, :read_only
    attr :idnummer, Types::IdnummerBlock.optional, :read_only
    attr :special_address, Types::SpecialAddressBlock.optional, :read_only
    attr :remark, Types::PersonRemarkBlock.optional, :read_only
    attr :remark_extended, Types::RemarkExtendedBlock.optional, :read_only
    attr :remarks_five_latest, Types::RemarksFiveLatestBlock.optional, :read_only
    attr :tax_information, Types::TaxInformationBlock.optional, :read_only
    attr :tax_information_previously_year, Types::TaxInformationPreviouslyApprovedBlock.optional, :read_only
    attr :safenode_remark, Types::SafenodePersonRemarkBlock.optional, :read_only
    attr :safenode_remark_extended, Types::SafenodePersonRemarkExtendedBlock.optional, :read_only
    attr :safenode_credit_report, Types::SafenodePersonCreditReportBlock.optional, :read_only
    attr :safenode_tax_information, Types::SafenodePersonTaxInformationBlock.optional, :read_only
    attr :real_estate_holding, Types::HasRealEstateHoldingBlock.optional, :read_only
    attr :relation, Types::PersonRelationBlock.optional, :read_only
    attr :legal_guardian, Types::LegalGuardianBlock.optional, :read_only
    attr :company_beneficial_owners, Types::Array.of(Types::PersonBeneficialOwnerCompanyBlock).optional, :read_only
    attr :statistics, Types::PersonStatisticsBlock.optional, :read_only
    attr :address_divided, Types::PersonAddressDividedBlock.optional, :read_only
    attr :residential_info, Types::ResidentalBlock.optional, :read_only
  end
end
