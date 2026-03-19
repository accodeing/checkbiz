# frozen_string_literal: true

require "dry-struct"

module Checkbiz
  module Types
    include Dry.Types()

    CAMEL = RestEasy::Conventions::CamelCase.new

    class AdditionalCompanyBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :company_name, Types::String.optional
      attribute? :organization_number, Types::String.optional
    end

    class CompanyBeneficialOwnerControlBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :code, Types::String.optional
      attribute? :text, Types::String.optional
      attribute? :org_nr, Types::String.optional
      attribute? :org_namn, Types::String.optional
    end

    class CompanyBeneficialOwnerExtentBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :code, Types::String.optional
      attribute? :text, Types::String.optional
    end

    class EventPagination < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :records_returned, Types::Integer.optional
      attribute? :total_records_found, Types::Integer.optional
      attribute? :total_pages, Types::Integer.optional
      attribute? :current_page, Types::Integer.optional
      attribute? :page_size, Types::Integer.optional
    end

    class IdnummerBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :idnummer, Types::String.optional
    end

    class LookupNoAddress < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :street, Types::String.optional
      attribute? :house_number, Types::String.optional
      attribute? :entrance, Types::String.optional
      attribute? :post_code, Types::String.optional
      attribute? :post_area, Types::String.optional
      attribute? :address_string, Types::String.optional
    end

    class LookupNoContactPoint < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :label, Types::String.optional
      attribute? :main, Types::Bool.optional
      attribute? :type, Types::String.optional
      attribute? :value, Types::String.optional
    end

    class LookupNoCoordinate < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :latitude, Types::Float.optional
      attribute? :longitude, Types::Float.optional
    end

    class LookupNoCreditRating < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :date, Types::String.optional
      attribute? :rating, Types::String.optional
      attribute? :description, Types::String.optional
    end

    class LookupNoIndustry < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :name, Types::String.optional
      attribute? :id, Types::String.optional
    end

    class LookupNoNaceIndustry < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :name, Types::String.optional
      attribute? :id, Types::String.optional
    end

    class LookupNoParentCompany < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :name, Types::String.optional
      attribute? :organization_number, Types::String.optional
      attribute? :id, Types::String.optional
      attribute? :info_url, Types::String.optional
    end

    class LookupNoPostAddress < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :post_code, Types::String.optional
      attribute? :post_area, Types::String.optional
      attribute? :number, Types::String.optional
      attribute? :text, Types::String.optional
      attribute? :prefix, Types::String.optional
      attribute? :post_address_string, Types::String.optional
    end

    class LookupNoRole < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :birth_year, Types::String.optional
      attribute? :organization_number, Types::String.optional
      attribute? :id, Types::String.optional
      attribute? :type, Types::String.optional
      attribute? :name, Types::String.optional
      attribute? :role, Types::String.optional
      attribute? :from_date, Types::String.optional
    end

    class PersonBasicBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :first_name, Types::String.optional
      attribute? :given_name, Types::String.optional
      attribute? :sur_name, Types::String.optional
      attribute? :middle_name, Types::String.optional
      attribute? :last_name, Types::String.optional
      attribute? :co, Types::String.optional
      attribute? :street, Types::String.optional
      attribute? :zip_code, Types::String.optional
      attribute? :city, Types::String.optional
      attribute? :extended_address, Types::String.optional
      attribute? :foreign_address1, Types::String.optional
      attribute? :foreign_address2, Types::String.optional
      attribute? :foreign_address3, Types::String.optional
      attribute? :foreign_country, Types::String.optional
      attribute? :apartment_number, Types::String.optional
      attribute? :entrance, Types::String.optional
      attribute? :extra_address_field, Types::String.optional
      attribute? :street_name, Types::String.optional
      attribute? :street_number, Types::String.optional
    end

    class PersonBeneficialOwnerControlBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :code, Types::String.optional
      attribute? :text, Types::String.optional
      attribute? :org_nr, Types::String.optional
      attribute? :org_namn, Types::String.optional
    end

    class PersonBeneficialOwnerExtentBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :code, Types::String.optional
      attribute? :text, Types::String.optional
    end

    class PersonExtendedBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :municipality, Types::String.optional
      attribute? :municipality_code, Types::String.optional
      attribute? :parish, Types::String.optional
      attribute? :parish_code, Types::String.optional
      attribute? :district, Types::String.optional
      attribute? :district_code, Types::String.optional
      attribute? :county, Types::String.optional
      attribute? :county_code, Types::String.optional
      attribute? :next_birth_day, Types::String.optional
      attribute? :date_of_birth, Types::String.optional
      attribute? :age, Types::Integer.optional
      attribute? :gender, Types::String.optional
      attribute? :is_married, Types::Bool.optional
      attribute? :social_status_with, Types::String.optional
      attribute? :social_status_with_ssn, Types::String.optional
      attribute? :number_of_company_involvements, Types::Integer.optional
      attribute? :latitude, Types::String.optional
      attribute? :longitude, Types::String.optional
      attribute? :form_of_housing, Types::String.optional
      attribute? :reg_date, Types::String.optional
      attribute? :change_date, Types::String.optional
      attribute? :house_hold_reg_date, Types::String.optional
    end

    class PersonNameBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :first_name, Types::String.optional
      attribute? :given_name, Types::String.optional
      attribute? :sur_name, Types::String.optional
      attribute? :middle_name, Types::String.optional
      attribute? :last_name, Types::String.optional
      attribute? :age, Types::Integer.optional
      attribute? :gender, Types::String.optional
      attribute? :is_married, Types::Bool.optional
      attribute? :city, Types::String.optional
    end

    class SNIModel < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :code, Types::String.optional
      attribute? :text, Types::String.optional
    end

    class SSNBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :ssn, Types::String.optional
    end

    class SafenodeAddress < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :type, Types::String.optional
      attribute? :care_of, Types::String.optional
      attribute? :street_address, Types::String.optional
      attribute? :continuation, Types::String.optional
      attribute? :zip_code, Types::String.optional
      attribute? :city, Types::String.optional
      attribute? :foreign_address1, Types::String.optional
      attribute? :foreign_address2, Types::String.optional
      attribute? :foreign_address3, Types::String.optional
      attribute? :foreign_country, Types::String.optional
    end

    class SafenodeBoardMember < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :identification_number, Types::String.optional
      attribute? :name, Types::String.optional
      attribute? :role, Types::String.optional
    end

    class SafenodeRegistrationCodeWithDate < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :code, Types::Integer.optional
      attribute? :date, Types::String.optional
    end

    class SafenodeRemark < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :type, Types::String.optional
      attribute? :date, Types::String.optional
      attribute? :description, Types::String.optional
      attribute? :amount, Types::Float.optional
    end

    class SafenodeRemarkSummary < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :count, Types::Integer.optional
      attribute? :total_amount, Types::Float.optional
      attribute? :date_of_latest, Types::String.optional
    end

    class SafenodeSkuldsaldo < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :antal_a, Types::Integer.optional
      attribute? :saldo_a, Types::Float.optional
      attribute? :antal_e, Types::Integer.optional
      attribute? :saldo_e, Types::Float.optional
      attribute? :date, Types::String.optional
    end

    class SafenodeSkuldsanering < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :started, Types::String.optional
      attribute? :ended, Types::String.optional
    end

    class SearchNoContact < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :organization_number, Types::String.optional
      attribute? :type, Types::String.optional
      attribute? :id, Types::String.optional
      attribute? :name, Types::String.optional
      attribute? :post_code, Types::String.optional
      attribute? :post_area, Types::String.optional
      attribute? :info_url, Types::String.optional
    end

    class UrlCatalogBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :url, Types::String.optional
    end

    class UrlCompanyBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :url, Types::String.optional
    end

    class UrlLonekollenBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :url, Types::String.optional
    end

    class UrlPersonBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :url, Types::String.optional
    end

    class CompanyBasicBeneficialOwnerBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :company_name, Types::String.optional
      attribute? :organization_number, Types::String.optional
      attribute? :status, Types::String.optional
      attribute? :co, Types::String.optional
      attribute? :street, Types::String.optional
      attribute? :zip_code, Types::String.optional
      attribute? :city, Types::String.optional
      attribute? :company_code, Types::String.optional
      attribute? :company_code_text, Types::String.optional
      attribute? :registration_date, Types::String.optional
      attribute? :phone_number, Types::String.optional
      attribute? :additional_companies, Types::Array.of(AdditionalCompanyBlock).optional
      attribute? :related_org, Types::String.optional
      attribute? :public, Types::Bool.optional
      attribute? :financial_year, Types::String.optional
      attribute? :reporting_obligation_date, Types::String.optional
      attribute? :reportingobligation_code, Types::String.optional
      attribute? :beneficial_owner_status_code, Types::String.optional
      attribute? :beneficial_owner_status_text, Types::String.optional
      attribute? :reportingobligation_text, Types::String.optional
    end

    class CompanyBasicBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :company_name, Types::String.optional
      attribute? :organization_number, Types::String.optional
      attribute? :status, Types::String.optional
      attribute? :co, Types::String.optional
      attribute? :street, Types::String.optional
      attribute? :zip_code, Types::String.optional
      attribute? :city, Types::String.optional
      attribute? :company_code, Types::String.optional
      attribute? :company_code_text, Types::String.optional
      attribute? :registration_date, Types::String.optional
      attribute? :phone_number, Types::String.optional
      attribute? :additional_companies, Types::Array.of(AdditionalCompanyBlock).optional
      attribute? :related_org, Types::String.optional
      attribute? :public, Types::Bool.optional
      attribute? :financial_year, Types::String.optional
    end

    class CompanyBeneficialOwnerPersonBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :ssn, Types::String.optional
      attribute? :ssn_status, Types::String.optional
      attribute? :first_name, Types::String.optional
      attribute? :middle_name, Types::String.optional
      attribute? :last_name, Types::String.optional
      attribute? :admission_date, Types::String.optional
      attribute? :citizenship, Types::String.optional
      attribute? :country_of_residence, Types::String.optional
      attribute? :number_of_involvements_as_beneficial_owner, Types::Integer.optional
      attribute? :type, Types::String.optional
      attribute? :controls, Types::Array.of(CompanyBeneficialOwnerControlBlock).optional
      attribute? :extent, CompanyBeneficialOwnerExtentBlock.optional
      attribute? :suspicion, Types::String.optional
      attribute? :number_of_company_involvements, Types::Integer.optional
      attribute? :basic, PersonBasicBlock.optional
      attribute? :extended, PersonExtendedBlock.optional
    end

    class CompanyExtendedBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :corporation_founded_date, Types::String.optional
      attribute? :corporation_registered_date, Types::String.optional
      attribute? :registration_date, Types::String.optional
      attribute? :financial_year, Types::String.optional
      attribute? :company_regulation_date, Types::String.optional
      attribute? :corporate_tax, Types::String.optional
      attribute? :employer_status, Types::String.optional
      attribute? :vat_status, Types::String.optional
      attribute? :registered_sni, Types::Array.of(SNIModel).optional
      attribute? :registered_corporate_description, Types::String.optional
      attribute? :status, Types::String.optional
      attribute? :municipality, Types::String.optional
      attribute? :municipality_code, Types::String.optional
      attribute? :county, Types::String.optional
      attribute? :county_code, Types::String.optional
      attribute? :latitude, Types::String.optional
      attribute? :longitude, Types::String.optional
      attribute? :vat_status_registration_date, Types::String.optional
      attribute? :corporate_tax_registration_date, Types::String.optional
      attribute? :employer_status_registration_date, Types::String.optional
      attribute? :group_parent_company_org, Types::String.optional
      attribute? :group_parent_company_name, Types::String.optional
      attribute? :parent_company_org, Types::String.optional
      attribute? :parent_company_name, Types::String.optional
    end

    class LookupNoGeography < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :municipality, Types::String.optional
      attribute? :county, Types::String.optional
      attribute? :region, Types::String.optional
      attribute? :coordinate, LookupNoCoordinate.optional
      attribute? :address, LookupNoAddress.optional
    end

    class LookupNoLegalInformation < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :legal_name, Types::String.optional
      attribute? :address, LookupNoAddress.optional
      attribute? :post_address, LookupNoPostAddress.optional
      attribute? :share_capital, Types::Integer.optional
      attribute? :employees, Types::Integer.optional
      attribute? :company_type, Types::String.optional
      attribute? :established_date, Types::String.optional
      attribute? :parent_company, LookupNoParentCompany.optional
    end

    class SafenodeCompanyDetails < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :name, Types::String.optional
      attribute? :address, Types::String.optional
      attribute? :form, Types::String.optional
      attribute? :seat, Types::String.optional
      attribute? :phone, Types::String.optional
      attribute? :creation_date, Types::String.optional
      attribute? :main_line_of_business, Types::String.optional
      attribute? :vat, SafenodeRegistrationCodeWithDate.optional
      attribute? :registered_employer, SafenodeRegistrationCodeWithDate.optional
      attribute? :procuration_info, Types::String.optional
      attribute? :ftax_certificate, SafenodeRegistrationCodeWithDate.optional
    end

    class SafenodePersonDetails < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :name, Types::String.optional
      attribute? :registered, Types::String.optional
      attribute? :deregistered, Types::String.optional
      attribute? :county, Types::String.optional
      attribute? :municipality, Types::String.optional
      attribute? :married_to_personal_number, Types::String.optional
      attribute? :married_to_name, Types::String.optional
      attribute? :addresses, Types::Array.of(SafenodeAddress).optional
    end

    class WorksiteModel < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :cfar, Types::String.optional
      attribute? :designation, Types::String.optional
      attribute? :visitor_street, Types::String.optional
      attribute? :visitor_zip_code, Types::String.optional
      attribute? :visitor_city, Types::String.optional
      attribute? :co, Types::String.optional
      attribute? :street, Types::String.optional
      attribute? :zip_code, Types::String.optional
      attribute? :city, Types::String.optional
      attribute? :phone_number, Types::String.optional
      attribute? :registered_sni, Types::Array.of(SNIModel).optional
      attribute? :number_of_employees, Types::String.optional
    end

    class PersonBeneficialOwnerCompanyBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :organization_number, Types::String.optional
      attribute? :admission_date, Types::String.optional
      attribute? :type, Types::String.optional
      attribute? :controls, Types::Array.of(PersonBeneficialOwnerControlBlock).optional
      attribute? :extent, PersonBeneficialOwnerExtentBlock.optional
      attribute? :suspicion, Types::String.optional
      attribute? :basic, CompanyBasicBeneficialOwnerBlock.optional
      attribute? :extended, CompanyExtendedBlock.optional
    end

  end
end
