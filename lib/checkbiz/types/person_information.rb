# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class CompanyInvolvement < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :org_nr, Types::String.optional
      attribute? :company_name, Types::String.optional
      attribute? :company_code, Types::String.optional
      attribute? :function_texts, Types::String.optional
      attribute? :func1, Types::String.optional
      attribute? :func2, Types::String.optional
      attribute? :func3, Types::String.optional
      attribute? :func4, Types::String.optional
      attribute? :func1_text, Types::String.optional
      attribute? :func2_text, Types::String.optional
      attribute? :func3_text, Types::String.optional
      attribute? :func4_text, Types::String.optional
    end

    class CompanyInvolvementExtended < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :ssn, Types::String.optional
      attribute? :name, Types::String.optional
      attribute? :age, Types::Integer.optional
      attribute? :gender, Types::String.optional
      attribute? :municipality, Types::String.optional
      attribute? :municipality_code, Types::String.optional
      attribute? :org_nr, Types::String.optional
      attribute? :company_name, Types::String.optional
      attribute? :function_texts, Types::String.optional
      attribute? :func1, Types::String.optional
      attribute? :func2, Types::String.optional
      attribute? :func3, Types::String.optional
      attribute? :func4, Types::String.optional
      attribute? :func1_text, Types::String.optional
      attribute? :func2_text, Types::String.optional
      attribute? :func3_text, Types::String.optional
      attribute? :func4_text, Types::String.optional
      attribute? :number_of_employees, Types::Integer.optional
      attribute? :net_income, Types::Float.optional
      attribute? :turnover, Types::Float.optional
      attribute? :admission_date, Types::String.optional
      attribute? :registered_sni, Types::String.optional
      attribute? :registered_sni_text, Types::String.optional
    end

    class CompanyInvolvementHistory < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :org_nr, Types::String.optional
      attribute? :orignal_company_name, Types::String.optional
      attribute? :function_code, Types::String.optional
      attribute? :function_text, Types::String.optional
      attribute? :exit_date, Types::String.optional
      attribute? :entry_date, Types::String.optional
    end

    class CurrentAddressModel < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :street, Types::String.optional
      attribute? :zip_code, Types::String.optional
      attribute? :city, Types::String.optional
      attribute? :extended_address, Types::String.optional
      attribute? :municipality, Types::String.optional
      attribute? :county, Types::String.optional
      attribute? :lkf, Types::String.optional
    end

    class EventModel < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :date, Types::String.optional
      attribute? :event_text, Types::String.optional
    end

    class HasRealEstateHoldingBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :has_real_estate_holding, Types::Bool.optional
    end

    class LegalGuardianBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :legal_guardian, Types::String.optional
      attribute? :legal_guardian_ssn, Types::String.optional
      attribute? :legal_guardian2, Types::String.optional
      attribute? :legal_guardian_ssn2, Types::String.optional
    end

    class PersonAddressDividedBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :street, Types::String.optional
      attribute? :street_name, Types::String.optional
      attribute? :street_number, Types::String.optional
      attribute? :entrance, Types::String.optional
      attribute? :apartment_number, Types::String.optional
      attribute? :extra_address_field, Types::String.optional
    end

    class PersonRelationBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :is_married, Types::Bool.optional
      attribute? :social_status_with, Types::String.optional
      attribute? :social_status_with_ssn, Types::String.optional
    end

    class PersonRemarkBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :status, Types::String.optional
      attribute? :has_remark, Types::Bool.optional
      attribute? :last_remark_date, Types::String.optional
    end

    class PersonStatisticsBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :personal_number, Types::String.optional
      attribute? :municipality_code, Types::String.optional
      attribute? :municipality, Types::String.optional
      attribute? :county_code, Types::String.optional
      attribute? :county, Types::String.optional
      attribute? :h_region, Types::String.optional
      attribute? :form_of_housing, Types::String.optional
      attribute? :household_type, Types::String.optional
      attribute? :number_of_persons_on_address, Types::String.optional
      attribute? :number_of_dogs_on_address, Types::String.optional
      attribute? :has_dogs_on_address, Types::String.optional
      attribute? :number_of_vehicles_on_address, Types::String.optional
      attribute? :has_vehicles_on_address, Types::String.optional
      attribute? :company_involvement, Types::String.optional
      attribute? :number_of_companies_on_address, Types::String.optional
      attribute? :gender, Types::String.optional
      attribute? :age, Types::String.optional
      attribute? :age_range, Types::String.optional
    end

    class PhoneNumberBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :phone_numbers, Types::Array.of(Types::String).optional
      attribute? :phone_types, Types::Array.of(Types::String).optional
    end

    class PreviousAddressModel < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :street, Types::String.optional
      attribute? :zip_code, Types::String.optional
      attribute? :city, Types::String.optional
      attribute? :extended_address, Types::String.optional
      attribute? :municipality, Types::String.optional
      attribute? :county, Types::String.optional
      attribute? :lkf, Types::String.optional
      attribute? :moving_date, Types::String.optional
    end

    class RegisteredAtAddressCompanyModel < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :org_nr, Types::String.optional
      attribute? :company_name, Types::String.optional
      attribute? :street, Types::String.optional
      attribute? :city, Types::String.optional
      attribute? :company_code, Types::String.optional
    end

    class RegisteredAtAddressCompanyPhoneModel < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :org_nr, Types::String.optional
      attribute? :company_name, Types::String.optional
      attribute? :city, Types::String.optional
      attribute? :phone_number, Types::String.optional
    end

    class RegisteredAtAddressPersonModel < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :ssn, Types::String.optional
      attribute? :first_name, Types::String.optional
      attribute? :sure_name, Types::String.optional
      attribute? :street, Types::String.optional
      attribute? :city, Types::String.optional
      attribute? :municipality, Types::String.optional
      attribute? :age, Types::Integer.optional
      attribute? :reg_date, Types::String.optional
      attribute? :change_date, Types::String.optional
      attribute? :apartment_number, Types::String.optional
      attribute? :entrance, Types::String.optional
      attribute? :extra_address_field, Types::String.optional
      attribute? :street_name, Types::String.optional
      attribute? :street_number, Types::String.optional
    end

    class RegisteredAtAddressPersonPhoneModel < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :ssn, Types::String.optional
      attribute? :first_name, Types::String.optional
      attribute? :last_name, Types::String.optional
      attribute? :city, Types::String.optional
      attribute? :phone_number, Types::String.optional
    end

    class RegisteredDogAtAddressExtendedModel < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :name, Types::String.optional
      attribute? :race, Types::String.optional
      attribute? :gender, Types::String.optional
      attribute? :birth_date, Types::String.optional
      attribute? :age, Types::String.optional
      attribute? :updated_date, Types::String.optional
      attribute? :chip_id, Types::String.optional
      attribute? :owner_first_name, Types::String.optional
      attribute? :owner_surname, Types::String.optional
      attribute? :ssn, Types::String.optional
    end

    class RegisteredDogAtAddressModel < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :name, Types::String.optional
      attribute? :race, Types::String.optional
      attribute? :gender, Types::String.optional
      attribute? :birth_date, Types::String.optional
      attribute? :age, Types::String.optional
      attribute? :updated_date, Types::String.optional
    end

    class RegisteredVehicleAtAdressExtendedModel < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :brand, Types::String.optional
      attribute? :model, Types::String.optional
      attribute? :type_of_vehicle, Types::String.optional
      attribute? :year, Types::String.optional
      attribute? :retail_price, Types::String.optional
      attribute? :financed, Types::Bool.optional
      attribute? :lease, Types::Bool.optional
      attribute? :fuel, Types::String.optional
      attribute? :fuel2, Types::String.optional
      attribute? :vehicle_status, Types::String.optional
      attribute? :vehicle_status_date, Types::String.optional
    end

    class RegisteredVehicleAtAdressModel < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :brand, Types::String.optional
      attribute? :model, Types::String.optional
      attribute? :type_of_vehicle, Types::String.optional
      attribute? :year, Types::String.optional
      attribute? :retail_price, Types::String.optional
      attribute? :financed, Types::Bool.optional
      attribute? :lease, Types::Bool.optional
      attribute? :fuel, Types::String.optional
      attribute? :fuel2, Types::String.optional
    end

    class Remark < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :date, Types::String.optional
      attribute? :amount, Types::Float.optional
      attribute? :creditor, Types::String.optional
      attribute? :government, Types::String.optional
      attribute? :type_of_remark, Types::String.optional
    end

    class RemarkExtendedBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :status, Types::String.optional
      attribute? :has_debt_relief, Types::Bool.optional
      attribute? :has_seizure, Types::Bool.optional
      attribute? :has_real_estate_holding, Types::Bool.optional
      attribute? :payment_remark_number, Types::Integer.optional
      attribute? :payment_remark_sum, Types::Float.optional
      attribute? :public_remark_number, Types::Integer.optional
      attribute? :public_remark_sum, Types::Float.optional
      attribute? :public_remark_t_vlicense_number, Types::Integer.optional
      attribute? :public_remark_t_vlicense_sum, Types::Float.optional
      attribute? :public_remark_parking_fee_number, Types::Integer.optional
      attribute? :public_remark_parking_fee_sum, Types::Float.optional
      attribute? :public_remark_alimony_number, Types::Integer.optional
      attribute? :public_remark_alimony_sum, Types::Float.optional
      attribute? :public_remark_tax_arrears_number, Types::Integer.optional
      attribute? :public_remark_tax_arrears_sum, Types::Float.optional
      attribute? :public_remark_student_loans_number, Types::Integer.optional
      attribute? :public_remark_student_loans_sum, Types::Float.optional
      attribute? :private_remark_number, Types::Integer.optional
      attribute? :private_remark_amount, Types::Float.optional
      attribute? :last_remark_date, Types::String.optional
      attribute? :debt_number, Types::Integer.optional
      attribute? :debt_sum, Types::Float.optional
      attribute? :debt_public_remark_number, Types::Integer.optional
      attribute? :debt_public_remark_sum, Types::Float.optional
      attribute? :debt_private_remark_number, Types::Integer.optional
      attribute? :debt_private_remark_sum, Types::Float.optional
      attribute? :last_debt_date, Types::String.optional
    end

    class ResidentalBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :apartment_area, Types::Integer.optional
      attribute? :apartment_category, Types::Integer.optional
      attribute? :apartment_nr, Types::Integer.optional
      attribute? :building_purpose, Types::Integer.optional
      attribute? :building_type, Types::Integer.optional
      attribute? :construction_year, Types::Integer.optional
      attribute? :county_code, Types::String.optional
      attribute? :municipality_code, Types::String.optional
      attribute? :parish_code, Types::String.optional
      attribute? :floor, Types::Float.optional
      attribute? :floors, Types::Float.optional
      attribute? :home_type, Types::String.optional
      attribute? :house_nr, Types::Integer.optional
      attribute? :kitchen_type, Types::Integer.optional
      attribute? :letter, Types::String.optional
      attribute? :number, Types::String.optional
      attribute? :ownership_type, Types::String.optional
      attribute? :postal_area, Types::String.optional
      attribute? :postal_code, Types::String.optional
      attribute? :property_key, Types::String.optional
      attribute? :rooms, Types::Float.optional
      attribute? :street, Types::String.optional
      attribute? :type_code, Types::Integer.optional
      attribute? :rt90x, Types::Float.optional
      attribute? :rt90y, Types::Float.optional
      attribute? :sweref99x, Types::Integer.optional
      attribute? :sweref99y, Types::Integer.optional
      attribute? :wgs84lat, Types::Float.optional
      attribute? :wgs84lon, Types::Float.optional
      attribute? :updated_at, Types::String.optional
      attribute? :updated_from, Types::String.optional
    end

    class SSNStatusBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :ssn_status, Types::String.optional
      attribute? :change_date, Types::String.optional
    end

    class SafenodePersonAnnualTaxRecordBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :ar_dekl, Types::Integer.optional
      attribute? :ink_tj, Types::Float.optional
      attribute? :ink_nrv_akt_tot, Types::Float.optional
      attribute? :ink_nrv_pass_tot, Types::Float.optional
      attribute? :tax_forv_inkomst, Types::Float.optional
      attribute? :beskbar_forv_inkomst, Types::Float.optional
      attribute? :overskott_kapital, Types::Float.optional
      attribute? :underskott_kapital, Types::Float.optional
      attribute? :sk_slut, Types::Float.optional
      attribute? :ink_netto, Types::Float.optional
      attribute? :skatt, Types::Float.optional
    end

    class SafenodePersonRemarkEntryBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :type, Types::String.optional
      attribute? :date, Types::String.optional
      attribute? :description, Types::String.optional
      attribute? :amount, Types::Float.optional
    end

    class SafenodePersonRemarkSummaryBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :count, Types::Integer.optional
      attribute? :total_amount, Types::Float.optional
      attribute? :date_of_latest, Types::String.optional
    end

    class SafenodePersonSkuldsaldoBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :antal_a, Types::Integer.optional
      attribute? :saldo_a, Types::Float.optional
      attribute? :antal_e, Types::Integer.optional
      attribute? :saldo_e, Types::Float.optional
      attribute? :date, Types::String.optional
    end

    class SafenodePersonSkuldsaneringBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :started, Types::String.optional
      attribute? :ended, Types::String.optional
    end

    class SpecialAddress < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :co, Types::String.optional
      attribute? :street, Types::String.optional
      attribute? :zip_code, Types::String.optional
      attribute? :city, Types::String.optional
    end

    class TaxInformationPreviouslyApprovedBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :sum_of_income, Types::Float.optional
      attribute? :taxated_acquisitied_income, Types::Float.optional
      attribute? :income_through_service, Types::Float.optional
      attribute? :income_through_capital, Types::Float.optional
      attribute? :deficit_of_capital, Types::Float.optional
    end

    class CompanyInvolvementBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :number_of_company_involvements, Types::Array.of(CompanyInvolvement).optional
    end

    class CompanyInvolvementExtendedBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :number_of_company_involvements_extended, Types::Array.of(CompanyInvolvementExtended).optional
    end

    class CompanyInvolvementHistoryBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :company_involvement_history_list, Types::Array.of(CompanyInvolvementHistory).optional
    end

    class PreviousAddressBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :last_previous_address, PreviousAddressModel.optional
      attribute? :current_address, CurrentAddressModel.optional
      attribute? :last_change, Types::String.optional
      attribute? :number_of_moves, Types::Integer.optional
    end

    class PreviousAdressesBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :previous_adresses, Types::Array.of(PreviousAddressModel).optional
      attribute? :current_address, CurrentAddressModel.optional
      attribute? :last_change, Types::String.optional
      attribute? :number_of_moves, Types::Integer.optional
    end

    class RegisteredAtAddressBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :persons, Types::Array.of(RegisteredAtAddressPersonModel).optional
      attribute? :companies, Types::Array.of(RegisteredAtAddressCompanyModel).optional
      attribute? :company_phones, Types::Array.of(RegisteredAtAddressCompanyPhoneModel).optional
      attribute? :person_phones, Types::Array.of(RegisteredAtAddressPersonPhoneModel).optional
    end

    class RegisteredDogsAtAddressBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :number_of_dogs_registered_at_address, Types::Integer.optional
      attribute? :number_of_dogs_registered_at_municipality, Types::Integer.optional
      attribute? :number_of_dogs_registered_per_resident, Types::Integer.optional
      attribute? :dogs, Types::Array.of(RegisteredDogAtAddressModel).optional
    end

    class RegisteredDogsAtAddressExtendedBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :number_of_dogs_registered_at_address, Types::Integer.optional
      attribute? :number_of_dogs_registered_at_municipality, Types::Integer.optional
      attribute? :number_of_dogs_registered_per_resident, Types::Integer.optional
      attribute? :dogs, Types::Array.of(RegisteredDogAtAddressExtendedModel).optional
    end

    class RegisteredVehiclesAtAddressBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :number_of_cars, Types::Integer.optional
      attribute? :number_of_motorcycles, Types::Integer.optional
      attribute? :number_of_other_vehicles, Types::Integer.optional
      attribute? :updated_date, Types::String.optional
      attribute? :vehicle_last_checked, Types::String.optional
      attribute? :vehicles, Types::Array.of(RegisteredVehicleAtAdressModel).optional
    end

    class RegisteredVehiclesAtAddressExtendedBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :number_of_cars, Types::Integer.optional
      attribute? :number_of_motorcycles, Types::Integer.optional
      attribute? :number_of_other_vehicles, Types::Integer.optional
      attribute? :updated_date, Types::String.optional
      attribute? :vehicle_last_checked, Types::String.optional
      attribute? :vehicles, Types::Array.of(RegisteredVehicleAtAdressExtendedModel).optional
    end

    class RemarksFiveLatestBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :remarks, Types::Array.of(Remark).optional
    end

    class SafenodePersonCreditReportBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :blocked, Types::Bool.optional
      attribute? :status, Types::String.optional
      attribute? :summary_remarks, SafenodePersonRemarkSummaryBlock.optional
      attribute? :summary_emal, SafenodePersonRemarkSummaryBlock.optional
      attribute? :summary_amal, SafenodePersonRemarkSummaryBlock.optional
      attribute? :summary_tredskodomar, SafenodePersonRemarkSummaryBlock.optional
      attribute? :summary_utmatningar, SafenodePersonRemarkSummaryBlock.optional
      attribute? :current_skuldsaldo, SafenodePersonSkuldsaldoBlock.optional
      attribute? :latest_skuldsaldo, SafenodePersonSkuldsaldoBlock.optional
      attribute? :skuldsaldo_history, Types::Array.of(SafenodePersonSkuldsaldoBlock).optional
      attribute? :skuldsanering, SafenodePersonSkuldsaneringBlock.optional
      attribute? :konkurs, Types::String.optional
      attribute? :forvaltarskap, Types::String.optional
      attribute? :remarks, Types::Array.of(SafenodePersonRemarkEntryBlock).optional
      attribute? :annual_tax_records, Types::Array.of(SafenodePersonAnnualTaxRecordBlock).optional
    end

    class SafenodePersonRemarkBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :blocked, Types::Bool.optional
      attribute? :status, Types::String.optional
      attribute? :summary_remarks, SafenodePersonRemarkSummaryBlock.optional
      attribute? :forvaltarskap, Types::String.optional
    end

    class SafenodePersonRemarkExtendedBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :blocked, Types::Bool.optional
      attribute? :status, Types::String.optional
      attribute? :summary_remarks, SafenodePersonRemarkSummaryBlock.optional
      attribute? :summary_emal, SafenodePersonRemarkSummaryBlock.optional
      attribute? :summary_amal, SafenodePersonRemarkSummaryBlock.optional
      attribute? :summary_tredskodomar, SafenodePersonRemarkSummaryBlock.optional
      attribute? :summary_utmatningar, SafenodePersonRemarkSummaryBlock.optional
      attribute? :current_skuldsaldo, SafenodePersonSkuldsaldoBlock.optional
      attribute? :latest_skuldsaldo, SafenodePersonSkuldsaldoBlock.optional
      attribute? :skuldsaldo_history, Types::Array.of(SafenodePersonSkuldsaldoBlock).optional
      attribute? :skuldsanering, SafenodePersonSkuldsaneringBlock.optional
      attribute? :konkurs, Types::String.optional
      attribute? :forvaltarskap, Types::String.optional
      attribute? :remarks, Types::Array.of(SafenodePersonRemarkEntryBlock).optional
    end

    class SafenodePersonTaxInformationBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :blocked, Types::Bool.optional
      attribute? :status, Types::String.optional
      attribute? :annual_tax_records, Types::Array.of(SafenodePersonAnnualTaxRecordBlock).optional
      attribute? :skuldsanering, SafenodePersonSkuldsaneringBlock.optional
      attribute? :konkurs, Types::String.optional
      attribute? :forvaltarskap, Types::String.optional
    end

    class SpecialAddressBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :special_address, SpecialAddress.optional
    end

    class TaxInformationBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :tax_year, Types::Integer.optional
      attribute? :sum_of_income, Types::Float.optional
      attribute? :taxated_acquisitied_income, Types::Float.optional
      attribute? :income_through_service, Types::Float.optional
      attribute? :income_through_capital, Types::Float.optional
      attribute? :deficit_of_capital, Types::Float.optional
      attribute? :has_real_estate_holding, Types::Bool.optional
      attribute? :status, Types::String.optional
      attribute? :events, Types::Array.of(EventModel).optional
    end

  end
end
