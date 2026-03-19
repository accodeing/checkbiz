# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class BoardMember < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :name, Types::String.optional
      attribute? :function_code, Types::String.optional
      attribute? :function_text, Types::String.optional
      attribute? :ssn, Types::String.optional
      attribute? :admission_date, Types::String.optional
      attribute? :admission_date_before, Types::String.optional
    end

    class BoardMemberHistory < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :name, Types::String.optional
      attribute? :function_code, Types::String.optional
      attribute? :function_text, Types::String.optional
      attribute? :ssn, Types::String.optional
      attribute? :admission_date, Types::String.optional
      attribute? :admission_date_before, Types::String.optional
      attribute? :exit_date, Types::String.optional
    end

    class CompanyApplication < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :date, Types::String.optional
      attribute? :amount, Types::Float.optional
    end

    class CompanyBeneficialOwnerStatusBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :reporting_obligation_date, Types::String.optional
      attribute? :reportingobligation_code, Types::String.optional
      attribute? :reportingobligation_text, Types::String.optional
      attribute? :beneficial_owner_status_code, Types::String.optional
      attribute? :beneficial_owner_status_text, Types::String.optional
    end

    class CompanyEconomicBasicBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :slutkod, Types::String.optional
      attribute? :financial_period, Types::String.optional
      attribute? :turnover, Types::Float.optional
      attribute? :result_after_net_balance, Types::Float.optional
      attribute? :turnover_assets, Types::Float.optional
      attribute? :establishment_assets, Types::Float.optional
      attribute? :private_capital, Types::Float.optional
      attribute? :untaxed_reservs, Types::Float.optional
      attribute? :balance_cover, Types::Float.optional
      attribute? :operating_profit, Types::Float.optional
      attribute? :net_income, Types::Float.optional
      attribute? :share_capital, Types::Float.optional
      attribute? :total_long_term_liabilities, Types::Float.optional
      attribute? :total_short_term_liabilities, Types::Float.optional
      attribute? :number_of_employees, Types::Integer.optional
    end

    class CompanyEconomicExtendedBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :slutkod, Types::String.optional
      attribute? :financial_period, Types::String.optional
      attribute? :financial_net_length, Types::String.optional
      attribute? :red_type, Types::String.optional
      attribute? :accountant_comment, Types::String.optional
      attribute? :accountant_comment_text, Types::String.optional
      attribute? :bristkod, Types::String.optional
      attribute? :bristkod_text, Types::String.optional
      attribute? :utdelningskod, Types::String.optional
      attribute? :utdelning, Types::Float.optional
      attribute? :net_sales_and_profit_settlement_invoices, Types::Float.optional
      attribute? :cost_of_goods_sold, Types::Float.optional
      attribute? :gross_profit_or_gross_loss, Types::Float.optional
      attribute? :cost_of_sales, Types::Float.optional
      attribute? :administrative_costs, Types::Float.optional
      attribute? :cost_of_rd, Types::Float.optional
      attribute? :items_affecting_comparability_post_rr2, Types::Float.optional
      attribute? :other_operating_income_rr2, Types::Float.optional
      attribute? :other_operating_expenses, Types::Float.optional
      attribute? :change_in_inventory, Types::Float.optional
      attribute? :work_performed_own_account, Types::Float.optional
      attribute? :other_operating_income_rr1, Types::Float.optional
      attribute? :raw_materials_and_consumables, Types::Float.optional
      attribute? :merchandise, Types::Float.optional
      attribute? :other_external_expenses, Types::Float.optional
      attribute? :personnel_costs, Types::Float.optional
      attribute? :depreciation, Types::Float.optional
      attribute? :items_affecting_comparabilitypost_rr1, Types::Float.optional
      attribute? :other_operating_expenses_rr1, Types::Float.optional
      attribute? :operating_profit, Types::Float.optional
      attribute? :resultat_fran_andelar_i_koncern_och_intresseforetag, Types::Float.optional
      attribute? :interest_income_from_group_companies, Types::Float.optional
      attribute? :external_interest_income, Types::Float.optional
      attribute? :other_financial_interest_income, Types::Float.optional
      attribute? :interest_expenses_to_group_companies, Types::Float.optional
      attribute? :external_interest_expenses, Types::Float.optional
      attribute? :other_financial_expenses, Types::Float.optional
      attribute? :non_recurring_financial_items, Types::Float.optional
      attribute? :profit_after_financial_income_and_expenses, Types::Float.optional
      attribute? :extraordinary_income, Types::Float.optional
      attribute? :extraordinary_expenses, Types::Float.optional
      attribute? :group_contribution, Types::Float.optional
      attribute? :shareholders_contribution, Types::Float.optional
      attribute? :appropriations, Types::Float.optional
      attribute? :tax, Types::Float.optional
      attribute? :minoritetsintr_samt_vinst_forl_i_dotterbol_for_forvarv, Types::Float.optional
      attribute? :net_income, Types::Float.optional
      attribute? :subscribed_unpaid_capital, Types::Float.optional
      attribute? :capitalised_expenditure_rd, Types::Float.optional
      attribute? :patents_and_licenses, Types::Float.optional
      attribute? :goodwill, Types::Float.optional
      attribute? :other_intangible_assets, Types::Float.optional
      attribute? :total_intangible_assets, Types::Float.optional
      attribute? :land_and_buildings, Types::Float.optional
      attribute? :machines, Types::Float.optional
      attribute? :inventory, Types::Float.optional
      attribute? :machines_and_inventory, Types::Float.optional
      attribute? :other_tangible_fixed_assets_none_depreciable, Types::Float.optional
      attribute? :other_tangible_fixed_assets_depreciable, Types::Float.optional
      attribute? :sum_tangible_assets, Types::Float.optional
      attribute? :investments_in_subsidiaries_and_associates, Types::Float.optional
      attribute? :current_receivables_from_group_and_associated_companies, Types::Float.optional
      attribute? :loans_to_shareholder_and_related_parties, Types::Float.optional
      attribute? :other_financial_fixed_assets, Types::Float.optional
      attribute? :sum_financial_fixed_assets, Types::Float.optional
      attribute? :sum_fixed_assets, Types::Float.optional
      attribute? :work_in_progress_on_behalf_of_others, Types::Float.optional
      attribute? :other_inventories, Types::Float.optional
      attribute? :total_inventories, Types::Float.optional
      attribute? :accounts_receivable, Types::Float.optional
      attribute? :receivables_at_group_and_associated_companies, Types::Float.optional
      attribute? :other_current_receivables, Types::Float.optional
      attribute? :sum_current_receivables, Types::Float.optional
      attribute? :total_short_term_investments, Types::Float.optional
      attribute? :total_cash_and_cash_equivalents, Types::Float.optional
      attribute? :total_current_assets, Types::Float.optional
      attribute? :total_assets, Types::Float.optional
      attribute? :share_capital, Types::Float.optional
      attribute? :share_premium_reserve, Types::Float.optional
      attribute? :revaluation_reserve, Types::Float.optional
      attribute? :other_restricted_equity, Types::Float.optional
      attribute? :retained_earnings, Types::Float.optional
      attribute? :received_paid_group_contributions, Types::Float.optional
      attribute? :received_shareholder_contributions, Types::Float.optional
      attribute? :net_income2, Types::Float.optional
      attribute? :total_equity, Types::Float.optional
      attribute? :total_untaxed_reserves, Types::Float.optional
      attribute? :minority_interests, Types::Float.optional
      attribute? :total_provisions, Types::Float.optional
      attribute? :bond, Types::Float.optional
      attribute? :liabilities_to_credit_institutions_long_term, Types::Float.optional
      attribute? :liabilities_to_group_companies_and_associates_long_term, Types::Float.optional
      attribute? :other_long_term_liabilities, Types::Float.optional
      attribute? :total_long_term_liabilities, Types::Float.optional
      attribute? :liabilities_to_credit_institutions_short_term, Types::Float.optional
      attribute? :accounts_payable, Types::Float.optional
      attribute? :liabilities_to_group_companies_and_associates_short_term, Types::Float.optional
      attribute? :other_short_term_liabilities, Types::Float.optional
      attribute? :total_short_term_liabilities, Types::Float.optional
      attribute? :total_equity_and_liabilities, Types::Float.optional
      attribute? :company_assets, Types::Float.optional
      attribute? :real_estate_assets, Types::Float.optional
      attribute? :other_collateral, Types::Float.optional
      attribute? :total_collateral, Types::Float.optional
      attribute? :conditional_shareholder_contribution, Types::Float.optional
      attribute? :other_liabilities, Types::Float.optional
      attribute? :sum_liabilities, Types::Float.optional
      attribute? :number_of_employees, Types::Float.optional
      attribute? :salaries_of_the_board_and_ceo, Types::Float.optional
      attribute? :bonus_of_the_board_and_ceo, Types::Float.optional
      attribute? :salaries_to_other_employees, Types::Float.optional
      attribute? :including_performance_bonus_to_other_employees, Types::Float.optional
      attribute? :social_expenses, Types::Float.optional
      attribute? :depreciation_and_cost_of_goods_sold, Types::Float.optional
      attribute? :depreciation_in_selling_expenses, Types::Float.optional
      attribute? :depreciation_in_adminstration_expenses, Types::Float.optional
      attribute? :depreciation_in_rd_expenses, Types::Float.optional
      attribute? :depreciation_other_expenses, Types::Float.optional
      attribute? :unspecified_depreciation, Types::Float.optional
      attribute? :overdraft_facilities, Types::Float.optional
      attribute? :bank_overdrafts, Types::Float.optional
      attribute? :net_interest_finance, Types::Float.optional
    end

    class CompanyGroupResponsible < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :ssn, Types::String.optional
      attribute? :first_name, Types::String.optional
      attribute? :last_name, Types::String.optional
    end

    class CompanyGroupSummary < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :turnover, Types::Float.optional
      attribute? :net_income, Types::Float.optional
      attribute? :number_of_employees, Types::Float.optional
    end

    class CompanyKeyNumbersBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :financial_period, Types::String.optional
      attribute? :cash_liquidity, Types::Float.optional
      attribute? :solidity, Types::Float.optional
      attribute? :margins, Types::Float.optional
      attribute? :turnoverchange, Types::Float.optional
      attribute? :turnover_per_employee, Types::Float.optional
      attribute? :salary_per_employee, Types::Float.optional
      attribute? :number_of_employees, Types::Integer.optional
    end

    class CompanyNameBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :company_name, Types::String.optional
      attribute? :city, Types::String.optional
    end

    class CompanyPhoneNumberBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :phone_numbers, Types::Array.of(Types::String).optional
      attribute? :phone_types, Types::Array.of(Types::String).optional
    end

    class CompanyRemark < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :date, Types::String.optional
      attribute? :amount, Types::Float.optional
    end

    class CompanyRemarkBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :status, Types::String.optional
      attribute? :has_remark, Types::Bool.optional
      attribute? :last_remark_date, Types::String.optional
    end

    class CompanyWorksitesBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :organization_number, Types::String.optional
      attribute? :company_name, Types::String.optional
      attribute? :number_of_worksites, Types::Integer.optional
      attribute? :worksites, Types::Array.of(WorksiteModel).optional
    end

    class ControlledCompanyBeneficialOwnerBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :ssn, Types::String.optional
      attribute? :first_name, Types::String.optional
      attribute? :last_name, Types::String.optional
      attribute? :extend_code, Types::String.optional
      attribute? :extent_text, Types::String.optional
    end

    class SafenodeCompanyRemarkEntryBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :type, Types::String.optional
      attribute? :date, Types::String.optional
      attribute? :description, Types::String.optional
      attribute? :amount, Types::Float.optional
    end

    class SafenodeCompanyRemarkSummaryBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :count, Types::Integer.optional
      attribute? :total_amount, Types::Float.optional
      attribute? :date_of_latest, Types::String.optional
    end

    class SafenodeCompanySkuldsaldoBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :antal_a, Types::Integer.optional
      attribute? :saldo_a, Types::Float.optional
      attribute? :antal_e, Types::Integer.optional
      attribute? :saldo_e, Types::Float.optional
      attribute? :date, Types::String.optional
    end

    class SafenodeCompanySkuldsaneringBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :started, Types::String.optional
      attribute? :ended, Types::String.optional
    end

    class ShareCapitalItem < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :date, Types::String.optional
      attribute? :share_capital, Types::Float.optional
      attribute? :share_capital_currency_code, Types::String.optional
      attribute? :share_capital_min, Types::Float.optional
      attribute? :share_capital_min_currency_code, Types::String.optional
      attribute? :share_capital_max, Types::Float.optional
      attribute? :share_capital_max_currency_code, Types::String.optional
      attribute? :share_capital_count, Types::Integer.optional
      attribute? :share_capital_min_count, Types::Integer.optional
      attribute? :share_capital_max_count, Types::Integer.optional
    end

    class ShareClassItem < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :date, Types::String.optional
      attribute? :share_type, Types::String.optional
      attribute? :share_capital_count, Types::Integer.optional
      attribute? :voting_value, Types::Float.optional
      attribute? :share_capital_min_count, Types::Integer.optional
      attribute? :share_capital_max_count, Types::Integer.optional
    end

    class CompanyArticlesOfAssociationBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :articles_of_association, Types::Array.of(Types::String).optional
      attribute? :share_capital, Types::Array.of(ShareCapitalItem).optional
      attribute? :share_class, Types::Array.of(ShareClassItem).optional
    end

    class CompanyBoardOfDirectorsBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :registered_firm_signee, Types::String.optional
      attribute? :board_members, Types::Array.of(BoardMember).optional
    end

    class CompanyBoardOfDirectorsHistoryBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :board_members, Types::Array.of(BoardMemberHistory).optional
    end

    class CompanyRemarkExtendedBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :status, Types::String.optional
      attribute? :has_remark, Types::Bool.optional
      attribute? :last_remark_date, Types::String.optional
      attribute? :number_of_remarks, Types::Integer.optional
      attribute? :sum_of_remarks, Types::Float.optional
      attribute? :last5_remarks, Types::Array.of(CompanyRemark).optional
      attribute? :number_of_applications, Types::Integer.optional
      attribute? :sum_of_applications, Types::Float.optional
      attribute? :last5_applications, Types::Array.of(CompanyApplication).optional
      attribute? :sum_of_debt_balance, Types::Float.optional
      attribute? :debt_balance_date, Types::String.optional
      attribute? :distraint, Types::Bool.optional
    end

    class ControlledCompanyBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :organization_number, Types::String.optional
      attribute? :company_name, Types::String.optional
      attribute? :number_of_beneficial_owners, Types::Integer.optional
      attribute? :beneficial_owners, Types::Array.of(ControlledCompanyBeneficialOwnerBlock).optional
    end

    class SafenodeCompanyRemarkBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :blocked, Types::Bool.optional
      attribute? :status, Types::String.optional
      attribute? :summary_remarks, SafenodeCompanyRemarkSummaryBlock.optional
      attribute? :skuldsanering, SafenodeCompanySkuldsaneringBlock.optional
      attribute? :konkurs, Types::String.optional
    end

    class SafenodeCompanyRemarkExtendedBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :blocked, Types::Bool.optional
      attribute? :status, Types::String.optional
      attribute? :rating_value, Types::Integer.optional
      attribute? :rating_description, Types::String.optional
      attribute? :summary_ansokningar, SafenodeCompanyRemarkSummaryBlock.optional
      attribute? :summary_remarks, SafenodeCompanyRemarkSummaryBlock.optional
      attribute? :summary_emal, SafenodeCompanyRemarkSummaryBlock.optional
      attribute? :summary_amal, SafenodeCompanyRemarkSummaryBlock.optional
      attribute? :summary_tredskodomar, SafenodeCompanyRemarkSummaryBlock.optional
      attribute? :summary_utmatningar, SafenodeCompanyRemarkSummaryBlock.optional
      attribute? :current_skuldsaldo, SafenodeCompanySkuldsaldoBlock.optional
      attribute? :latest_skuldsaldo, SafenodeCompanySkuldsaldoBlock.optional
      attribute? :skuldsaldo_history, Types::Array.of(SafenodeCompanySkuldsaldoBlock).optional
      attribute? :skuldsanering, SafenodeCompanySkuldsaneringBlock.optional
      attribute? :konkurs, Types::String.optional
      attribute? :remarks, Types::Array.of(SafenodeCompanyRemarkEntryBlock).optional
    end

    class ControlledCompaniesBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :organization_number, Types::String.optional
      attribute? :company_name, Types::String.optional
      attribute? :number_of_controlled_companies, Types::Integer.optional
      attribute? :controlled_companies, Types::Array.of(ControlledCompanyBlock).optional
    end

    class CompanyGroupBasicItem < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :company_name, Types::String.optional
      attribute? :organization_number, Types::String.optional
      attribute? :percent, Types::Float.optional
      attribute? :percent_text, Types::String.optional
      attribute? :level, Types::Integer.optional
      attribute? :subsidiary_companies, Types::Array.of(CompanyGroupBasicItem).optional
    end

    class CompanyGroupBasicBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :company_group_list, Types::Array.of(CompanyGroupBasicItem).optional
    end

    class CompanyGroupExtendedItem < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :company_name, Types::String.optional
      attribute? :organization_number, Types::String.optional
      attribute? :percent, Types::Float.optional
      attribute? :percent_text, Types::String.optional
      attribute? :level, Types::Integer.optional
      attribute? :turnover, Types::Float.optional
      attribute? :net_income, Types::Float.optional
      attribute? :number_of_employees, Types::Float.optional
      attribute? :financial_period, Types::String.optional
      attribute? :responsible, CompanyGroupResponsible.optional
      attribute? :subsidiary_companies, Types::Array.of(CompanyGroupExtendedItem).optional
    end

    class CompanyGroupExtendedBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :company_group_summary, CompanyGroupSummary.optional
      attribute? :company_group_list, Types::Array.of(CompanyGroupExtendedItem).optional
    end

  end
end
