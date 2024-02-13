-- SQL transformation for psam_h11 generated by generate_sql_with_enum_types.py
{{ config(materialized='external', location=var('output_path') + '/housing_units_district_of_columbia_enum_types.parquet') }}

SELECT
    RT::ENUM ('H','P'),
    SERIALNO::VARCHAR,
    DIVISION::ENUM ('0','1','2','3','4','5','6','7','8','9'),
    PUMA::VARCHAR,
    REGION::ENUM ('1','2','3','4','9'),
    ST::ENUM ('01','02','04','05','06','08','09','10','11','12','13','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39','40','41','42','44','45','46','47','48','49','50','51','53','54','55','56','72'),
    ADJHSG::VARCHAR,
    ADJINC::VARCHAR,
    WGTP::VARCHAR,
    NP::VARCHAR,
    TYPEHUGQ::ENUM ('1','2','3'),
    ACCESSINET::ENUM ('b','1','2','3'),
    ACR::ENUM ('b','1','2','3'),
    AGS::ENUM ('b','1','2','3','4','5','6'),
    BATH::ENUM ('b','1','2'),
    BDSP::VARCHAR,
    BLD::ENUM ('bb','01','02','03','04','05','06','07','08','09','10'),
    BROADBND::ENUM ('b','1','2'),
    COMPOTHX::ENUM ('b','1','2'),
    CONP::VARCHAR,
    DIALUP::ENUM ('b','1','2'),
    ELEFP::ENUM ('b','1','2','3'),
    ELEP::VARCHAR,
    FS::ENUM ('b','1','2'),
    FULFP::ENUM ('b','1','2','3'),
    FULP::VARCHAR,
    GASFP::ENUM ('b','1','2','3','4'),
    GASP::VARCHAR,
    HFL::ENUM ('b','1','2','3','4','5','6','7','8','9'),
    HISPEED::ENUM ('b','1','2'),
    HOTWAT::ENUM ('b','1','2','9'),
    INSP::VARCHAR,
    LAPTOP::ENUM ('b','1','2'),
    MHP::VARCHAR,
    MRGI::VARCHAR,
    MRGP::VARCHAR,
    MRGT::VARCHAR,
    MRGX::VARCHAR,
    OTHSVCEX::ENUM ('b','1','2'),
    REFR::ENUM ('b','1','2'),
    RMSP::VARCHAR,
    RNTM::VARCHAR,
    RNTP::VARCHAR,
    RWAT::ENUM ('b','1','2','9'),
    RWATPR::ENUM ('b','1','2','9'),
    SATELLITE::ENUM ('b','1','2'),
    SINK::ENUM ('b','1','2'),
    SMARTPHONE::ENUM ('b','1','2'),
    SMP::VARCHAR,
    STOV::ENUM ('b','1','2'),
    TABLET::ENUM ('b','1','2'),
    TEL::ENUM ('b','1','2'),
    TEN::ENUM ('b','1','2','3','4'),
    VACDUR::ENUM ('b','1','2','3','4','5','6','7'),
    VACOTH::ENUM ('bb','1','2','3','4','5','6','7','8','9','10','11'),
    VACS::ENUM ('b','1','2','3','4','5','6','7'),
    VALP::VARCHAR,
    VEH::ENUM ('b','0','1','2','3','4','5','6'),
    WATFP::ENUM ('b','1','2','3'),
    WATP::VARCHAR,
    YRBLT::ENUM ('bbbb','1939','1940','1950','1960','1970','1980','1990','2000','2010','2020','2021','2022'),
    CPLT::ENUM ('b','1','2','3','4'),
    FINCP::VARCHAR,
    FPARC::VARCHAR,
    GRNTP::VARCHAR,
    GRPIP::VARCHAR,
    HHL::VARCHAR,
    HHLANP::VARCHAR,
    HHLDRAGEP::VARCHAR,
    HHLDRHISP::ENUM ('bb','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24'),
    HHLDRRAC1P::ENUM ('b','1','2','3','4','5','6','7','8','9'),
    HHT::ENUM ('b','1','2','3','4','5','6','7'),
    HHT2::ENUM ('bb','01','02','03','04','05','06','07','08','09','10','11','12'),
    HINCP::VARCHAR,
    HUGCL::VARCHAR,
    HUPAC::VARCHAR,
    HUPAOC::VARCHAR,
    HUPARC::VARCHAR,
    KIT::ENUM ('b','1','2'),
    LNGI::ENUM ('b','1','2'),
    MULTG::ENUM ('b','1','2'),
    MV::ENUM ('b','1','2','3','4','5','6','7'),
    NOC::VARCHAR,
    NPF::VARCHAR,
    NPP::VARCHAR,
    NR::ENUM ('b','0','1'),
    NRC::VARCHAR,
    OCPIP::VARCHAR,
    PARTNER::ENUM ('b','0','1','2','3','4'),
    PLM::ENUM ('b','1','2','9'),
    PLMPRP::ENUM ('b','1','2','9'),
    PSF::ENUM ('b','0','1'),
    R18::VARCHAR,
    R60::VARCHAR,
    R65::VARCHAR,
    RESMODE::ENUM ('b','1','2','3'),
    SMOCP::VARCHAR,
    SMX::VARCHAR,
    SRNT::VARCHAR,
    SVAL::ENUM ('b','0','1'),
    TAXAMT::VARCHAR,
    WIF::ENUM ('b','0','1','2','3'),
    WKEXREL::ENUM ('bb','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15'),
    WORKSTAT::ENUM ('bb','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15'),
    FACCESSP::ENUM ('b','0','1'),
    FACRP::ENUM ('b','0','1'),
    FAGSP::ENUM ('b','0','1'),
    FBATHP::ENUM ('b','0','1'),
    FBDSP::ENUM ('b','0','1'),
    FBLDP::ENUM ('b','0','1'),
    FBROADBNDP::ENUM ('b','0','1'),
    FCOMPOTHXP::ENUM ('b','0','1'),
    FCONP::ENUM ('b','0','1'),
    FDIALUPP::ENUM ('b','0','1'),
    FELEP::ENUM ('b','0','1'),
    FFINCP::ENUM ('b','0','1'),
    FFSP::ENUM ('0','1'),
    FFULP::ENUM ('b','0','1'),
    FGASP::ENUM ('b','0','1'),
    FGRNTP::ENUM ('b','0','1'),
    FHFLP::ENUM ('b','0','1'),
    FHINCP::ENUM ('b','0','1'),
    FHISPEEDP::ENUM ('b','0','1'),
    FHOTWATP::ENUM ('b','0','1'),
    FINSP::ENUM ('b','0','1'),
    FKITP::ENUM ('b','0','1'),
    FLAPTOPP::ENUM ('b','0','1'),
    FMHP::ENUM ('b','0','1'),
    FMRGIP::ENUM ('b','0','1'),
    FMRGP::ENUM ('b','0','1'),
    FMRGTP::ENUM ('b','0','1'),
    FMRGXP::ENUM ('b','0','1'),
    FMVP::ENUM ('b','0','1'),
    FOTHSVCEXP::ENUM ('b','0','1'),
    FPLMP::ENUM ('b','0','1'),
    FPLMPRP::ENUM ('b','0','1'),
    FREFRP::ENUM ('b','0','1'),
    FRMSP::ENUM ('b','0','1'),
    FRNTMP::ENUM ('b','0','1'),
    FRNTP::ENUM ('b','0','1'),
    FRWATP::ENUM ('b','0','1'),
    FRWATPRP::ENUM ('b','0','1'),
    FSATELLITEP::ENUM ('b','0','1'),
    FSINKP::ENUM ('b','0','1'),
    FSMARTPHONP::ENUM ('b','0','1'),
    FSMOCP::ENUM ('b','0','1'),
    FSMP::ENUM ('b','0','1'),
    FSMXHP::ENUM ('b','0','1'),
    FSMXSP::ENUM ('b','0','1'),
    FSTOVP::ENUM ('b','0','1'),
    FTABLETP::ENUM ('b','0','1'),
    FTAXP::ENUM ('b','0','1'),
    FTELP::ENUM ('b','0','1'),
    FTENP::ENUM ('b','0','1'),
    FVACDURP::ENUM ('b','0','1'),
    FVACOTHP::ENUM ('b','0','1'),
    FVACSP::ENUM ('b','0','1'),
    FVALP::ENUM ('b','0','1'),
    FVEHP::ENUM ('b','0','1'),
    FWATP::ENUM ('b','0','1'),
    FYRBLTP::ENUM ('b','0','1'),
    WGTP1::VARCHAR,
    WGTP2::VARCHAR,
    WGTP3::VARCHAR,
    WGTP4::VARCHAR,
    WGTP5::VARCHAR,
    WGTP6::VARCHAR,
    WGTP7::VARCHAR,
    WGTP8::VARCHAR,
    WGTP9::VARCHAR,
    WGTP10::VARCHAR,
    WGTP11::VARCHAR,
    WGTP12::VARCHAR,
    WGTP13::VARCHAR,
    WGTP14::VARCHAR,
    WGTP15::VARCHAR,
    WGTP16::VARCHAR,
    WGTP17::VARCHAR,
    WGTP18::VARCHAR,
    WGTP19::VARCHAR,
    WGTP20::VARCHAR,
    WGTP21::VARCHAR,
    WGTP22::VARCHAR,
    WGTP23::VARCHAR,
    WGTP24::VARCHAR,
    WGTP25::VARCHAR,
    WGTP26::VARCHAR,
    WGTP27::VARCHAR,
    WGTP28::VARCHAR,
    WGTP29::VARCHAR,
    WGTP30::VARCHAR,
    WGTP31::VARCHAR,
    WGTP32::VARCHAR,
    WGTP33::VARCHAR,
    WGTP34::VARCHAR,
    WGTP35::VARCHAR,
    WGTP36::VARCHAR,
    WGTP37::VARCHAR,
    WGTP38::VARCHAR,
    WGTP39::VARCHAR,
    WGTP40::VARCHAR,
    WGTP41::VARCHAR,
    WGTP42::VARCHAR,
    WGTP43::VARCHAR,
    WGTP44::VARCHAR,
    WGTP45::VARCHAR,
    WGTP46::VARCHAR,
    WGTP47::VARCHAR,
    WGTP48::VARCHAR,
    WGTP49::VARCHAR,
    WGTP50::VARCHAR,
    WGTP51::VARCHAR,
    WGTP52::VARCHAR,
    WGTP53::VARCHAR,
    WGTP54::VARCHAR,
    WGTP55::VARCHAR,
    WGTP56::VARCHAR,
    WGTP57::VARCHAR,
    WGTP58::VARCHAR,
    WGTP59::VARCHAR,
    WGTP60::VARCHAR,
    WGTP61::VARCHAR,
    WGTP62::VARCHAR,
    WGTP63::VARCHAR,
    WGTP64::VARCHAR,
    WGTP65::VARCHAR,
    WGTP66::VARCHAR,
    WGTP67::VARCHAR,
    WGTP68::VARCHAR,
    WGTP69::VARCHAR,
    WGTP70::VARCHAR,
    WGTP71::VARCHAR,
    WGTP72::VARCHAR,
    WGTP73::VARCHAR,
    WGTP74::VARCHAR,
    WGTP75::VARCHAR,
    WGTP76::VARCHAR,
    WGTP77::VARCHAR,
    WGTP78::VARCHAR,
    WGTP79::VARCHAR,
    WGTP80::VARCHAR,
FROM read_csv('/Users/me/data/american_community_survey/2022/1-Year/csv_hdc/psam_h11.csv', 
              parallel=False,
              all_varchar=True,
              auto_detect=True)