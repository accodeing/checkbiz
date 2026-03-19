# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class SafenodeAnnualTaxRecord < Dry::Struct
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

    class SafenodePersonCreditReport < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :blocked, Types::Bool.optional
      attribute? :status, Types::String.optional
      attribute? :details, SafenodePersonDetails.optional
      attribute? :score_value, Types::Integer.optional
      attribute? :score_description, Types::String.optional
      attribute? :recovery_probability, Types::Float.optional
      attribute? :remark_probability, Types::Float.optional
      attribute? :summary_remarks, SafenodeRemarkSummary.optional
      attribute? :summary_emal, SafenodeRemarkSummary.optional
      attribute? :summary_amal, SafenodeRemarkSummary.optional
      attribute? :summary_tredskodomar, SafenodeRemarkSummary.optional
      attribute? :summary_utmatningar, SafenodeRemarkSummary.optional
      attribute? :skuldsaldo, SafenodeSkuldsaldo.optional
      attribute? :skuldsaldo_history, Types::Array.of(SafenodeSkuldsaldo).optional
      attribute? :skuldsanering, SafenodeSkuldsanering.optional
      attribute? :konkurs, Types::String.optional
      attribute? :forvaltarskap, Types::String.optional
      attribute? :remarks, Types::Array.of(SafenodeRemark).optional
      attribute? :annual_tax_records, Types::Array.of(SafenodeAnnualTaxRecord).optional
    end

  end
end
