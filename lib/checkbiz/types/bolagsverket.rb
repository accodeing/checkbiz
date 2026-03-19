# frozen_string_literal: true

require_relative "common"

module Checkbiz
  module Types

    class AdressType < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :co, Types::String.optional
      attribute? :postadress, Types::String.optional
      attribute? :postnummer, Types::String.optional
      attribute? :postort, Types::String.optional
      attribute? :land, Types::String.optional
    end

    class AktiekapitalforandringTypeAkForandringEKonvMinskningForfallenBeslutsfattare < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :kod, Types::String.optional
      attribute? :value, Types::String.optional
    end

    class AktiekapitalforandringTypeAkForandringEKonvMinskningTillstandTillstandAv < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :kod, Types::String.optional
      attribute? :value, Types::String.optional
    end

    class AktiekapitalforandringTypeAkForandringEKonvTypAvForandring < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :text, Types::String.optional
      attribute? :kod, Types::String.optional
    end

    class AktiekapitalforandringTypeAkForandringFKonvMinskningRattTillstandMinskningForfallenBeslut < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :beslut_datum, Types::String.optional
      attribute? :beslutsfattare, Types::String.optional
    end

    class AktiekapitalforandringTypeAkForandringFKonvNyemissionBemyndigandeBemyndFore < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :annat_datum, Types::String.optional
      attribute? :bolagsstamma_ar, Types::Integer.optional
    end

    class AktieslagType < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :namn, Types::String.optional
      attribute? :antal, Types::Float.optional
      attribute? :hogst, Types::Integer.optional
      attribute? :lagst, Types::Integer.optional
      attribute? :rostvarde, Types::String.optional
    end

    class ArendeidentitetType < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :artal, Types::String.optional
      attribute? :idnummer, Types::String.optional
    end

    class ArendeinformationForetagArendeRakenskapsperiod < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :godkanddatum, Types::String.optional
      attribute? :rakenskapsperiodslut, Types::String.optional
      attribute? :rakenskapsperiodfrom, Types::String.optional
    end

    class Arendestatus < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :kod, Types::String.optional
      attribute? :value, Types::String.optional
    end

    class BemyndigandeTypeBemyndFore < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :annat_datum, Types::String.optional
      attribute? :bolagsstamma_ar, Types::Integer.optional
    end

    class BemyndigandeTypeBemyndigandeBemyndFore < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :bolagsstamma_ar, Types::Integer.optional
      attribute? :annat_datum, Types::String.optional
    end

    class BeslutsfattareType < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :kod, Types::String.optional
      attribute? :value, Types::String.optional
    end

    class BitradesforbudTypeBeslutBeslutsfattare < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :kod, Types::String.optional
      attribute? :value, Types::String.optional
    end

    class BitradesforbudTypeForbudsdatumSlutligt < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :from, Types::String.optional
      attribute? :tom, Types::String.optional
    end

    class BitradesforbudTypeForbudsdatumTillfalligt < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :from, Types::String.optional
    end

    class BitradesforbudTypeForbudsdatumUpphavning < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :from, Types::String.optional
    end

    class ForandringAndamalType < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :text, Types::String.optional
      attribute? :kod, Types::String.optional
    end

    class ForandringGenomType < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :text, Types::String.optional
      attribute? :kod, Types::String.optional
    end

    class Foretagsform < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :typ, Types::String.optional
      attribute? :value, Types::String.optional
    end

    class ForetagshuvudTypeFirma < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :namn, Types::String.optional
    end

    class ForetagshuvudTypeForetagsform < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :typ, Types::String.optional
      attribute? :skadeforsakringsbolag, Types::Bool.optional
      attribute? :livforsakringsbolag, Types::Bool.optional
      attribute? :value, Types::String.optional
    end

    class ForetagshuvudTypeForetagsidentitet < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :registreringsdatum, Types::String.optional
      attribute? :sekel, Types::String.optional
      attribute? :identity, Types::String.optional
      attribute? :lopnummer, Types::String.optional
      attribute? :bolagsverketsid, Types::String.optional
    end

    class ForetagshuvudTypeLikvidationsForelaggande < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :meddelande, Types::String.optional
      attribute? :svarsdatum, Types::String.optional
    end

    class ForetagshuvudTypeStatus < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :kod, Types::String.optional
      attribute? :datum, Types::String.optional
      attribute? :value, Types::String.optional
    end

    class ForetradareFunktionType < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :kod, Types::String.optional
      attribute? :value, Types::String.optional
    end

    class HandlaggareType < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :telefon, Types::String.optional
      attribute? :enhet, Types::String.optional
      attribute? :kod, Types::String.optional
      attribute? :namn, Types::String.optional
    end

    class IdentitetType < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :sekel, Types::String.optional
      attribute? :identity, Types::String.optional
      attribute? :lopnummer, Types::String.optional
      attribute? :bolagsverketsid, Types::String.optional
    end

    class LanType < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :kod, Types::String.optional
      attribute? :value, Types::String.optional
    end

    class MeddelandeTypeAnmarkning < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :text, Types::String.optional
      attribute? :kod, Types::String.optional
    end

    class NaringsforbudTypeBeslutBeslutsfattare < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :kod, Types::String.optional
      attribute? :value, Types::String.optional
    end

    class NaringsforbudTypeDispens < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :from, Types::String.optional
      attribute? :tom, Types::String.optional
      attribute? :aterkalldat, Types::String.optional
    end

    class NaringsforbudTypeForbudsdatumSlutligt < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :from, Types::String.optional
      attribute? :tom, Types::String.optional
    end

    class NaringsforbudTypeForbudsdatumTillfalligt < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :from, Types::String.optional
    end

    class NaringsforbudTypeForbudsdatumUpphavning < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :from, Types::String.optional
    end

    class PersonhuvudType < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :namn, Types::String.optional
      attribute? :sekel, Types::String.optional
      attribute? :personnummer, Types::String.optional
    end

    class PersonligKonkursTypeBeslut < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :malnummer, Types::String.optional
    end

    class PersonligKonkursTypeKonkursdatumInleddBeslutsfattare < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :kod, Types::String.optional
      attribute? :value, Types::String.optional
    end

    class Revisorskvalifikation < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :typ, Types::String.optional
    end

    class Rubricering < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :type, Types::String.optional
      attribute? :status, Types::String.optional
      attribute? :value, Types::String.optional
    end

    class SkuldebrevTypeBeslut < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :beslut_datum, Types::String.optional
      attribute? :beslutsfattare, Types::String.optional
    end

    class SkuldebrevTypeOptionerAntal < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :verkligt_antal, Types::String.optional
      attribute? :lagst, Types::String.optional
      attribute? :hogst, Types::String.optional
    end

    class SkuldebrevTypeOptionerTidForNyteckning < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :from, Types::String.optional
      attribute? :tom, Types::String.optional
    end

    class SkuldebrevTypeOptionerTidForNyteckningHist < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :tid1, Types::String.optional
      attribute? :tid2, Types::String.optional
    end

    class StatusType < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :datum, Types::String.optional
      attribute? :kod, Types::String.optional
      attribute? :value, Types::String.optional
    end

    class ValutaType < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :belopp, Types::Float.optional
      attribute? :valuta, Types::String.optional
    end

    class AktiekapitalType < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :fritext, Types::String.optional
      attribute? :aktiekapital_belopp, ValutaType.optional
      attribute? :aktiekapital_hogst, ValutaType.optional
      attribute? :aktiekapital_lagst, ValutaType.optional
      attribute? :nominellt_belopp, ValutaType.optional
      attribute? :antal_aktier_totalt, Types::String.optional
      attribute? :antal_aktier_hogst, Types::Integer.optional
      attribute? :antal_aktier_lagst, Types::Integer.optional
      attribute? :aktieslag, Types::Array.of(AktieslagType).optional
      attribute? :full_bet, Types::Bool.optional
      attribute? :neds_verk, Types::Bool.optional
    end

    class AktiekapitalforandringTypeAkForandringEKonvAktier < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :nominellt_belopp, ValutaType.optional
      attribute? :tot_ant_aktier, Types::String.optional
    end

    class AktiekapitalforandringTypeAkForandringEKonvBeslut < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :beslut_datum, Types::String.optional
      attribute? :beslutsfattare, BeslutsfattareType.optional
    end

    class AktiekapitalforandringTypeAkForandringEKonvForandringsBelopp < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :belopp, ValutaType.optional
      attribute? :max, ValutaType.optional
      attribute? :min, ValutaType.optional
      attribute? :minskning_belopp, ValutaType.optional
      attribute? :betal_inkl_overkurs, ValutaType.optional
    end

    class AktiekapitalforandringTypeAkForandringEKonvMinskningForfallen < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :beslutsfattare, AktiekapitalforandringTypeAkForandringEKonvMinskningForfallenBeslutsfattare.optional
      attribute? :beslutsdatum, Types::String.optional
    end

    class AktiekapitalforandringTypeAkForandringEKonvMinskningTillstand < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :tillstand_av, AktiekapitalforandringTypeAkForandringEKonvMinskningTillstandTillstandAv.optional
      attribute? :beslutsdatum, Types::String.optional
    end

    class AktiekapitalforandringTypeAkForandringEKonvNyemissionBetalningDelbetalning < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :antal_aktier, Types::String.optional
      attribute? :belopp, ValutaType.optional
      attribute? :full_betald, Types::Bool.optional
    end

    class AktiekapitalforandringTypeAkForandringFKonvFondemissionAktier < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :nominellt_belopp, ValutaType.optional
      attribute? :ant_aktier, Types::Integer.optional
    end

    class AktiekapitalforandringTypeAkForandringFKonvMinskningAktier < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :nominellt_belopp, ValutaType.optional
      attribute? :ant_aktier, Types::String.optional
    end

    class AktiekapitalforandringTypeAkForandringFKonvMinskningBeslut < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :beslut_datum, Types::String.optional
      attribute? :beslutsfattare, BeslutsfattareType.optional
      attribute? :minsknings_belopp, ValutaType.optional
    end

    class AktiekapitalforandringTypeAkForandringFKonvMinskningRattTillstandMinskningForfallen < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :minsknings_belopp, ValutaType.optional
      attribute? :beslut, AktiekapitalforandringTypeAkForandringFKonvMinskningRattTillstandMinskningForfallenBeslut.optional
      attribute? :forfallen, Types::Bool.optional
    end

    class AktiekapitalforandringTypeAkForandringFKonvMinskningRattTillstandRattensTillstand < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :rattens_beslut_datum, Types::String.optional
      attribute? :minskning_nominellt_belopp, ValutaType.optional
    end

    class AktiekapitalforandringTypeAkForandringFKonvNyemissionAktier < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :nominellt_belopp, ValutaType.optional
      attribute? :bet_ant_aktier, Types::Integer.optional
      attribute? :ant_aktier, Types::Integer.optional
    end

    class AktiekapitalforandringTypeAkForandringFKonvNyemissionBemyndigande < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :bemynd_datum, Types::String.optional
      attribute? :bemynd_fore, AktiekapitalforandringTypeAkForandringFKonvNyemissionBemyndigandeBemyndFore.optional
    end

    class AktiekapitalforandringTypeAkForandringFKonvNyemissionBeslut < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :beslut_datum, Types::String.optional
      attribute? :beslutsfattare, BeslutsfattareType.optional
    end

    class AktiekapitalforandringTypeAkForandringFKonvNyemissionForandringsbelopp < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :belopp, ValutaType.optional
      attribute? :max, ValutaType.optional
      attribute? :min, ValutaType.optional
      attribute? :betal_inkl_overkurs, ValutaType.optional
      attribute? :betalt_belopp, ValutaType.optional
    end

    class AktiekapitalforandringTypeAkForandringFKonvSkuldebrevNyUtbyteNyUtbyte < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :arendeidentitet, ArendeidentitetType.optional
      attribute? :registreringsdatum, Types::String.optional
      attribute? :ant_aktier, Types::Integer.optional
      attribute? :utbyt_konvert_belopp, ValutaType.optional
      attribute? :ak_efter_nyutbyte, ValutaType.optional
      attribute? :aktieslag, Types::Array.of(AktieslagType).optional
      attribute? :andrat_genom, Types::String.optional
      attribute? :fritext, Types::String.optional
    end

    class AktiekapitalforandringTypeAkForandringFKonvSkuldebrevNyUtbyteNyteckning < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :arendeidentitet, ArendeidentitetType.optional
      attribute? :registreringsdatum, Types::String.optional
      attribute? :ant_aktier, Types::Integer.optional
      attribute? :nyteckningsbelopp, ValutaType.optional
      attribute? :ak_efter_nyteckning, ValutaType.optional
      attribute? :aktieslag, Types::Array.of(AktieslagType).optional
      attribute? :andrat_genom, Types::String.optional
      attribute? :fritext, Types::String.optional
    end

    class ArendehuvudType < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :arendeidentitet, ArendeidentitetType.optional
      attribute? :rubricering, Types::Array.of(Rubricering).optional
      attribute? :arendestatus, Arendestatus.optional
    end

    class ArendehuvudTypeA15 < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :arendeidentitet, ArendeidentitetType.optional
      attribute? :rubricering, Types::Array.of(Rubricering).optional
      attribute? :arendestatus, Types::Array.of(Arendestatus).optional
    end

    class ArendehuvudTypeA30 < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :arendeidentitet, ArendeidentitetType.optional
      attribute? :rubricering, Types::Array.of(Rubricering).optional
      attribute? :arendestatus, Types::Array.of(Arendestatus).optional
    end

    class AvgiftType < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :belopp, ValutaType.optional
      attribute? :betaldavgift, ValutaType.optional
      attribute? :ocr, Types::String.optional
      attribute? :postgiro, Types::String.optional
      attribute? :bankgiro, Types::String.optional
    end

    class BemyndigandeType1 < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :bemynd_datum, Types::String.optional
      attribute? :bemynd_fore, BemyndigandeTypeBemyndFore.optional
      attribute? :bemynd_avser, Types::Array.of(Types::String).optional
      attribute? :aktieslag, Types::Array.of(AktieslagType).optional
    end

    class BemyndigandeTypeBemyndigande < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :bemynd_datum, Types::String.optional
      attribute? :bemynd_fore, BemyndigandeTypeBemyndigandeBemyndFore.optional
      attribute? :typ, Types::String.optional
    end

    class BitradesforbudTypeBeslut < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :beslutsfattare, BitradesforbudTypeBeslutBeslutsfattare.optional
      attribute? :datum, Types::String.optional
      attribute? :typ, Types::String.optional
    end

    class BitradesforbudTypeForbudsdatum < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :slutligt, BitradesforbudTypeForbudsdatumSlutligt.optional
      attribute? :tillfalligt, BitradesforbudTypeForbudsdatumTillfalligt.optional
      attribute? :upphavning, BitradesforbudTypeForbudsdatumUpphavning.optional
    end

    class ForetagshuvudTypeInneliggandeAranden < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :rubricering, Rubricering.optional
      attribute? :antal, Types::Integer.optional
    end

    class HuvudskyddslanType < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :huvudlan, LanType.optional
      attribute? :skyddslan, Types::Array.of(LanType).optional
    end

    class MeddelandeType < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :anmarkning, Types::Array.of(MeddelandeTypeAnmarkning).optional
      attribute? :meddelande_type_text, Types::String.optional
      attribute? :lopnr, Types::String.optional
      attribute? :sista_svars_datum, Types::String.optional
      attribute? :utskrifts_datum, Types::String.optional
    end

    class NaringsforbudTypeBeslut < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :beslutsfattare, NaringsforbudTypeBeslutBeslutsfattare.optional
      attribute? :malnummer, Types::String.optional
      attribute? :datum, Types::String.optional
      attribute? :typ, Types::String.optional
    end

    class NaringsforbudTypeForbudsdatum < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :slutligt, NaringsforbudTypeForbudsdatumSlutligt.optional
      attribute? :tillfalligt, NaringsforbudTypeForbudsdatumTillfalligt.optional
      attribute? :upphavning, NaringsforbudTypeForbudsdatumUpphavning.optional
    end

    class PersoninformationPersonForetagForetradare < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :funktion, Types::Array.of(ForetradareFunktionType).optional
      attribute? :utlandsbosatt, Types::Bool.optional
      attribute? :arbetstagarrepresentant, Types::Bool.optional
      attribute? :forsakringstagarrepresentant, Types::Bool.optional
    end

    class PersonligKonkursTypeForvaltare < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :fornamn, Types::String.optional
      attribute? :namn, Types::String.optional
      attribute? :adress, AdressType.optional
    end

    class PersonligKonkursTypeKonkursdatumInledd < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :datum, Types::String.optional
      attribute? :beslutsfattare, PersonligKonkursTypeKonkursdatumInleddBeslutsfattare.optional
    end

    class PersonligKonkursTypeTillsynsmyndighet < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :namn, Types::String.optional
      attribute? :adress, AdressType.optional
    end

    class SkuldebrevTypeForandringsbelopp < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :beslutat_belopp, ValutaType.optional
      attribute? :max, ValutaType.optional
      attribute? :min, ValutaType.optional
    end

    class SkuldebrevTypeKonvertibler < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :belopp, ValutaType.optional
      attribute? :utbyte_from, Types::String.optional
      attribute? :utbyte_tom, Types::String.optional
      attribute? :tid_for_utbyte1, Types::String.optional
      attribute? :tid_for_utbyte2, Types::String.optional
    end

    class SkuldebrevTypeOptioner < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :belopp, ValutaType.optional
      attribute? :aktieteckning_from, Types::String.optional
      attribute? :antal, SkuldebrevTypeOptionerAntal.optional
      attribute? :aktieteckning_tom, Types::String.optional
      attribute? :utan_lan, Types::Bool.optional
      attribute? :med_lan, Types::Bool.optional
      attribute? :tid_for_nyteckning, SkuldebrevTypeOptionerTidForNyteckning.optional
      attribute? :tid_for_nyteckning_hist, SkuldebrevTypeOptionerTidForNyteckningHist.optional
    end

    class AktiekapitalforandringTypeAkForandringEKonvMinskning < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :minskning_av_ak_pagar, Types::Bool.optional
      attribute? :forfallen, AktiekapitalforandringTypeAkForandringEKonvMinskningForfallen.optional
      attribute? :tillstand, AktiekapitalforandringTypeAkForandringEKonvMinskningTillstand.optional
      attribute? :minsknings_belopp, ValutaType.optional
    end

    class AktiekapitalforandringTypeAkForandringEKonvNyemissionBetalning < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :betalningssatt, Types::Array.of(Types::String).optional
      attribute? :belopp, ValutaType.optional
      attribute? :betalt_antal_aktier, Types::String.optional
      attribute? :delbetalning, AktiekapitalforandringTypeAkForandringEKonvNyemissionBetalningDelbetalning.optional
    end

    class AktiekapitalforandringTypeAkForandringFKonvFondemission < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :arendeidentitet, ArendeidentitetType.optional
      attribute? :registreringsdatum, Types::String.optional
      attribute? :beslutsdatum, Types::String.optional
      attribute? :forandring_genom, Types::Array.of(Types::String).optional
      attribute? :aktier, AktiekapitalforandringTypeAkForandringFKonvFondemissionAktier.optional
      attribute? :forandringsbelopp, ValutaType.optional
      attribute? :ak_efter_fondemission, ValutaType.optional
      attribute? :aktieslag, Types::Array.of(AktieslagType).optional
      attribute? :andrat_genom, Types::String.optional
      attribute? :fritext, Types::String.optional
    end

    class AktiekapitalforandringTypeAkForandringFKonvMinskning < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :arendeidentitet, ArendeidentitetType.optional
      attribute? :registreringsdatum, Types::String.optional
      attribute? :beslut, AktiekapitalforandringTypeAkForandringFKonvMinskningBeslut.optional
      attribute? :forandring_genom, Types::Array.of(ForandringGenomType).optional
      attribute? :forandring_andamal, Types::Array.of(ForandringAndamalType).optional
      attribute? :ak_efter_minskning, ValutaType.optional
      attribute? :aktier, AktiekapitalforandringTypeAkForandringFKonvMinskningAktier.optional
      attribute? :minskning_av_ak_pagar, Types::Bool.optional
      attribute? :aktieslag, Types::Array.of(AktieslagType).optional
      attribute? :andrat_genom, Types::String.optional
      attribute? :fritext, Types::String.optional
    end

    class AktiekapitalforandringTypeAkForandringFKonvMinskningRattTillstand < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :arendeidentitet, ArendeidentitetType.optional
      attribute? :registreringsdatum, Types::String.optional
      attribute? :beslutsdatum, Types::String.optional
      attribute? :rattens_tillstand, AktiekapitalforandringTypeAkForandringFKonvMinskningRattTillstandRattensTillstand.optional
      attribute? :minskning_forfallen, AktiekapitalforandringTypeAkForandringFKonvMinskningRattTillstandMinskningForfallen.optional
      attribute? :ak_efter_minskning_forfallen, ValutaType.optional
      attribute? :andrat_genom, Types::String.optional
      attribute? :fritext, Types::String.optional
    end

    class AktiekapitalforandringTypeAkForandringFKonvNyemission < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :arendeidentitet, ArendeidentitetType.optional
      attribute? :registreringsdatum, Types::String.optional
      attribute? :bemyndigande, AktiekapitalforandringTypeAkForandringFKonvNyemissionBemyndigande.optional
      attribute? :beslut, AktiekapitalforandringTypeAkForandringFKonvNyemissionBeslut.optional
      attribute? :forandringsbelopp, AktiekapitalforandringTypeAkForandringFKonvNyemissionForandringsbelopp.optional
      attribute? :fullbetald, Types::Bool.optional
      attribute? :aktier, AktiekapitalforandringTypeAkForandringFKonvNyemissionAktier.optional
      attribute? :ak_efter_nyemission, ValutaType.optional
      attribute? :aktieslag, Types::Array.of(AktieslagType).optional
      attribute? :andrat_genom, Types::String.optional
      attribute? :fritext, Types::String.optional
    end

    class AktiekapitalforandringTypeAkForandringFKonvSkuldebrevNyUtbyte < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :ny_utbyte, AktiekapitalforandringTypeAkForandringFKonvSkuldebrevNyUtbyteNyUtbyte.optional
      attribute? :nyteckning, AktiekapitalforandringTypeAkForandringFKonvSkuldebrevNyUtbyteNyteckning.optional
    end

    class ArendeType < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :arendehuvud, ArendehuvudType.optional
      attribute? :registreringsdatum, Types::String.optional
      attribute? :ankomstdatum, Types::String.optional
    end

    class ArendeTypeA30 < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :arendehuvud, ArendehuvudTypeA30.optional
      attribute? :registreringsdatum, Types::String.optional
      attribute? :ankomstdatum, Types::String.optional
    end

    class BemyndigandeType < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :arendeidentitet, ArendeidentitetType.optional
      attribute? :registreringsdatum, Types::String.optional
      attribute? :bemyndigande, Types::Array.of(BemyndigandeTypeBemyndigande).optional
      attribute? :fritext, Types::String.optional
      attribute? :lopnr, Types::Integer.optional
    end

    class BitradesforbudType < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :fritext, Types::String.optional
      attribute? :beslut, BitradesforbudTypeBeslut.optional
      attribute? :forbudsdatum, BitradesforbudTypeForbudsdatum.optional
    end

    class FirmaforslagType < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :namn, Types::String.optional
      attribute? :typ, Types::String.optional
      attribute? :godkant, Types::Bool.optional
      attribute? :inkom_datum, Types::String.optional
      attribute? :inkom_tid, Types::String.optional
      attribute? :huvudskyddslan, HuvudskyddslanType.optional
    end

    class ForetagshuvudType < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :foretagsidentitet, ForetagshuvudTypeForetagsidentitet.optional
      attribute? :firma, ForetagshuvudTypeFirma.optional
      attribute? :foretagsform, ForetagshuvudTypeForetagsform.optional
      attribute? :status, Types::Array.of(ForetagshuvudTypeStatus).optional
      attribute? :likvidations_forelaggande, ForetagshuvudTypeLikvidationsForelaggande.optional
      attribute? :inneliggande_aranden, ForetagshuvudTypeInneliggandeAranden.optional
    end

    class NaringsforbudType < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :fritext, Types::String.optional
      attribute? :forbudsdatum, NaringsforbudTypeForbudsdatum.optional
      attribute? :beslut, NaringsforbudTypeBeslut.optional
      attribute? :dispens, NaringsforbudTypeDispens.optional
      attribute? :avveckling, Types::String.optional
    end

    class PersoninformationPersonForetag < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :foretagsidentitet, IdentitetType.optional
      attribute? :firma_namn, Types::String.optional
      attribute? :foretagsform, Foretagsform.optional
      attribute? :status, Types::Array.of(StatusType).optional
      attribute? :foretradare, PersoninformationPersonForetagForetradare.optional
    end

    class PersonligKonkursTypeKonkursdatum < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :inledd, PersonligKonkursTypeKonkursdatumInledd.optional
      attribute? :avslutad, Types::String.optional
      attribute? :upphavd, Types::String.optional
    end

    class SkuldebrevType < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :arendeidentitet, ArendeidentitetType.optional
      attribute? :registreringsdatum, Types::String.optional
      attribute? :bemyndigande, BemyndigandeType1.optional
      attribute? :beslut, SkuldebrevTypeBeslut.optional
      attribute? :forandringsbelopp, SkuldebrevTypeForandringsbelopp.optional
      attribute? :tecknat_belopp, ValutaType.optional
      attribute? :aktieslag, Types::Array.of(AktieslagType).optional
      attribute? :a_kkan_okas_med_belopp, ValutaType.optional
      attribute? :andrat_genom, Types::String.optional
      attribute? :optioner, SkuldebrevTypeOptioner.optional
      attribute? :konvertibler, SkuldebrevTypeKonvertibler.optional
      attribute? :fritext, Types::String.optional
      attribute? :lopnr, Types::Integer.optional
      attribute? :typ, Types::String.optional
    end

    class AktiekapitalforandringTypeAkForandringEKonv < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :typ_av_forandring, AktiekapitalforandringTypeAkForandringEKonvTypAvForandring.optional
      attribute? :andrat_genom, Types::String.optional
      attribute? :forandrings_belopp, AktiekapitalforandringTypeAkForandringEKonvForandringsBelopp.optional
      attribute? :aktier, AktiekapitalforandringTypeAkForandringEKonvAktier.optional
      attribute? :beslut, AktiekapitalforandringTypeAkForandringEKonvBeslut.optional
      attribute? :nyemission_betalning, AktiekapitalforandringTypeAkForandringEKonvNyemissionBetalning.optional
      attribute? :minskning, AktiekapitalforandringTypeAkForandringEKonvMinskning.optional
      attribute? :forandring_genom, Types::Array.of(ForandringGenomType).optional
      attribute? :forandring_andamal, Types::Array.of(ForandringAndamalType).optional
      attribute? :aktieslag, Types::Array.of(AktieslagType).optional
      attribute? :fritext, Types::String.optional
      attribute? :utgivande_arende, ArendeidentitetType.optional
    end

    class AktiekapitalforandringTypeAkForandringFKonv < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :nyemission, AktiekapitalforandringTypeAkForandringFKonvNyemission.optional
      attribute? :fondemission, AktiekapitalforandringTypeAkForandringFKonvFondemission.optional
      attribute? :minskning, AktiekapitalforandringTypeAkForandringFKonvMinskning.optional
      attribute? :skuldebrev_ny_utbyte, AktiekapitalforandringTypeAkForandringFKonvSkuldebrevNyUtbyte.optional
      attribute? :minskning_ratt_tillstand, AktiekapitalforandringTypeAkForandringFKonvMinskningRattTillstand.optional
    end

    class ArendeinformationForetag < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :foretagshuvud, ForetagshuvudType.optional
      attribute? :arende, Types::Array.of(ArendeType).optional
    end

    class ArendeinformationForetagA30 < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :foretagshuvud, ForetagshuvudType.optional
      attribute? :arende, Types::Array.of(ArendeTypeA30).optional
    end

    class ArendeinformationForetagArendeA15 < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :ankomstdatum, Types::String.optional
      attribute? :ankomsttid, Types::String.optional
      attribute? :registreringsdatum, Types::String.optional
      attribute? :kungorelse_datum, Types::String.optional
      attribute? :kompletterings_datum, Types::Array.of(Types::String).optional
      attribute? :korrigerat_datum, Types::String.optional
      attribute? :foretagsform, Foretagsform.optional
      attribute? :rakenskapsperiod, ArendeinformationForetagArendeRakenskapsperiod.optional
      attribute? :arendehuvud, ArendehuvudTypeA15.optional
      attribute? :firmaforslag, Types::Array.of(FirmaforslagType).optional
      attribute? :meddelande, Types::Array.of(MeddelandeType).optional
      attribute? :overfort_till, ArendeidentitetType.optional
      attribute? :overfort_fran, ArendeidentitetType.optional
      attribute? :omprovat_ref, ArendeidentitetType.optional
      attribute? :overklagat_ref, ArendeidentitetType.optional
      attribute? :avgift, AvgiftType.optional
      attribute? :handlaggare, Types::Array.of(HandlaggareType).optional
      attribute? :diarium, Types::String.optional
    end

    class PersonligKonkursType < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :konkursdatum, PersonligKonkursTypeKonkursdatum.optional
      attribute? :beslut, PersonligKonkursTypeBeslut.optional
      attribute? :tillsynsmyndighet, PersonligKonkursTypeTillsynsmyndighet.optional
      attribute? :forvaltare, PersonligKonkursTypeForvaltare.optional
      attribute? :dodsbonummer, Types::String.optional
    end

    class Aktiekapitalforandring < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :arendeidentitet, ArendeidentitetType.optional
      attribute? :andrat_genom, Types::String.optional
      attribute? :registreringsdatum, Types::String.optional
      attribute? :forandrat_belopp, ValutaType.optional
      attribute? :belopp_efter_forandring, ValutaType.optional
      attribute? :aktiekapitalforandring_type_ak_forandring_e_konv, AktiekapitalforandringTypeAkForandringEKonv.optional
      attribute? :aktiekapitalforandring_type_ak_forandring_f_konv, AktiekapitalforandringTypeAkForandringFKonv.optional
      attribute? :lopnr, Types::Integer.optional
    end

    class ArendeForteckningBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :arende_information_foretag_lista, Types::Array.of(ArendeinformationForetag).optional
    end

    class ArendeForteckningBlockA30 < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :arende_information_foretag_lista, Types::Array.of(ArendeinformationForetagA30).optional
    end

    class ArendeinformationForetagA15 < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :foretagshuvud, ForetagshuvudType.optional
      attribute? :arende, ArendeinformationForetagArendeA15.optional
    end

    class PersoninformationPerson < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :personhuvud, PersonhuvudType.optional
      attribute? :revisorskvalifikation, Revisorskvalifikation.optional
      attribute? :personlig_konkurs, Types::Array.of(PersonligKonkursType).optional
      attribute? :bitradesforbud, BitradesforbudType.optional
      attribute? :naringsforbud, NaringsforbudType.optional
      attribute? :foretag, Types::Array.of(PersoninformationPersonForetag).optional
    end

    class ArendeInformationBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :arendeinformation_foretag_lista, Types::Array.of(ArendeinformationForetagA15).optional
    end

    class ForetagsinformationForetagForetagsgeneration < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :aktiekapital, AktiekapitalType.optional
      attribute? :aktiekapitalforandring, Types::Array.of(Aktiekapitalforandring).optional
      attribute? :bemyndigande, Types::Array.of(BemyndigandeType).optional
      attribute? :skuldebrev, Types::Array.of(SkuldebrevType).optional
    end

    class PersonInformationBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :personinformation_person_lista, Types::Array.of(PersoninformationPerson).optional
    end

    class ForetagsinformationForetag < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :foretagshuvud, ForetagshuvudType.optional
      attribute? :foretagsgeneration, ForetagsinformationForetagForetagsgeneration.optional
    end

    class AktiekapitalforandringBlock < Dry::Struct
      transform_keys { |key| CAMEL.parse(key) }

      attribute? :foretagsinformation_foretag_lista, Types::Array.of(ForetagsinformationForetag).optional
    end

  end
end
