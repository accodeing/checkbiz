# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class SafenodeCompanyRemarkControl < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :blocked, Types::Bool.optional
      attribute? :status, Types::String.optional
      attribute? :details, SafenodeCompanyDetails.optional
      attribute? :board_members, Types::Array.of(SafenodeBoardMember).optional
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
