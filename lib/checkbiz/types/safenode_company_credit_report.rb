# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class SafenodeFinancialStatement < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :period_start, Types::String.optional
      attribute? :period_end, Types::String.optional
      attribute? :number_of_employees, Types::Integer.optional
      attribute? :turnover, Types::Integer.optional
      attribute? :yearly_result, Types::Integer.optional
      attribute? :earnings_after_depreciation, Types::Integer.optional
      attribute? :ebtda, Types::Integer.optional
      attribute? :earnings_after_net_interest_income, Types::Integer.optional
      attribute? :total_assets, Types::Integer.optional
      attribute? :total_equity, Types::Integer.optional
      attribute? :sum_of_cash_bank, Types::Integer.optional
      attribute? :long_term_liabilities, Types::Integer.optional
      attribute? :short_term_liabilities, Types::Integer.optional
    end

    class SafenodeCompanyCreditReport < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :blocked, Types::Bool.optional
      attribute? :status, Types::String.optional
      attribute? :details, SafenodeCompanyDetails.optional
      attribute? :financial_statements, Types::Array.of(SafenodeFinancialStatement).optional
      attribute? :board_members, Types::Array.of(SafenodeBoardMember).optional
      attribute? :rating_value, Types::Integer.optional
      attribute? :rating_description, Types::String.optional
      attribute? :summary_ansokningar, SafenodeRemarkSummary.optional
      attribute? :summary_remarks, SafenodeRemarkSummary.optional
      attribute? :summary_emal, SafenodeRemarkSummary.optional
      attribute? :summary_amal, SafenodeRemarkSummary.optional
      attribute? :summary_tredskodomar, SafenodeRemarkSummary.optional
      attribute? :summary_utmatningar, SafenodeRemarkSummary.optional
      attribute? :skuldsaldo, SafenodeSkuldsaldo.optional
      attribute? :skuldsaldo_history, Types::Array.of(SafenodeSkuldsaldo).optional
      attribute? :skuldsanering, SafenodeSkuldsanering.optional
      attribute? :konkurs, Types::String.optional
      attribute? :remarks, Types::Array.of(SafenodeRemark).optional
    end

  end
end
