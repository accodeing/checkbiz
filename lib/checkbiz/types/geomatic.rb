# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class AcadrMatchlvl < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :id, Types::String.optional
      attribute? :name, Types::String.optional
      attribute? :desc, Types::String.optional
    end

    class ChlCouFac < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :id, Types::String.optional
      attribute? :name, Types::String.optional
      attribute? :desc, Types::String.optional
    end

    class CnztypG3 < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :id, Types::String.optional
      attribute? :name, Types::String.optional
      attribute? :desc, Types::String.optional
    end

    class EduFac < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :id, Types::String.optional
      attribute? :name, Types::String.optional
      attribute? :desc, Types::String.optional
    end

    class FamSizeFac < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :id, Types::String.optional
      attribute? :name, Types::String.optional
      attribute? :desc, Types::String.optional
    end

    class OriginFac < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :id, Types::String.optional
      attribute? :name, Types::String.optional
      attribute? :desc, Types::String.optional
    end

    class PcodeMatchlvl < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :id, Types::String.optional
      attribute? :name, Types::String.optional
      attribute? :desc, Types::String.optional
    end

    class PurpowFac < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :id, Types::String.optional
      attribute? :name, Types::String.optional
      attribute? :desc, Types::String.optional
    end

    class ResibldyFac < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :id, Types::String.optional
      attribute? :name, Types::String.optional
      attribute? :desc, Types::String.optional
    end

    class TenureFac < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :id, Types::String.optional
      attribute? :name, Types::String.optional
      attribute? :desc, Types::String.optional
    end

    class UnadrMatchlvl < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :id, Types::String.optional
      attribute? :name, Types::String.optional
      attribute? :desc, Types::String.optional
    end

    class UnadrMatchlvlDetail < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :id, Types::String.optional
      attribute? :name, Types::String.optional
      attribute? :desc, Types::String.optional
    end

    class Matchinfo < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :unadr_matchlvl, UnadrMatchlvl.optional
      attribute? :unadr_matchlvl_detail, UnadrMatchlvlDetail.optional
      attribute? :acadr_matchlvl, AcadrMatchlvl.optional
      attribute? :pcode_matchlvl, PcodeMatchlvl.optional
    end

    class Values < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :purpow_fac, PurpowFac.optional
      attribute? :edu_fac, EduFac.optional
      attribute? :tenure_fac, TenureFac.optional
      attribute? :cnztyp_g3, CnztypG3.optional
      attribute? :fam_size_fac, FamSizeFac.optional
      attribute? :chl_cou_fac, ChlCouFac.optional
      attribute? :resibldy_fac, ResibldyFac.optional
      attribute? :origin_fac, OriginFac.optional
    end

    class Match < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :values, Values.optional
    end

    class GeomaticSEBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :matchinfo, Matchinfo.optional
      attribute? :match, Match.optional
    end

  end
end
