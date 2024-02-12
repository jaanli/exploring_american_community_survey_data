-- SQL transformation for psam_h55 generated by generate_sql_with_enum_types.py
{{ config(materialized='external', location=var('output_path') + '/housing_units_wisconsin.parquet') }}
CREATE TYPE RT_enum AS ENUM ('H','P');
CREATE TYPE DIVISION_enum AS ENUM ('0','1','2','3','4','5','6','7','8','9');
CREATE TYPE REGION_enum AS ENUM ('1','2','3','4','9');
CREATE TYPE ST_enum AS ENUM ('01','02','04','05','06','08','09','10','11','12','13','15','16','17','18','19','20','21','22','23','24','25','26','27','28','29','30','31','32','33','34','35','36','37','38','39','40','41','42','44','45','46','47','48','49','50','51','53','54','55','56','72');
CREATE TYPE ADJHSG_enum AS ENUM ('1000000');
CREATE TYPE ADJINC_enum AS ENUM ('1042311');
CREATE TYPE WGTP_enum AS ENUM ('0');
CREATE TYPE NP_enum AS ENUM ('0','1');
CREATE TYPE TYPEHUGQ_enum AS ENUM ('1','2','3');
CREATE TYPE ACCESSINET_enum AS ENUM ('b','1','2','3');
CREATE TYPE ACR_enum AS ENUM ('b','1','2','3');
CREATE TYPE AGS_enum AS ENUM ('b','1','2','3','4','5','6');
CREATE TYPE BATH_enum AS ENUM ('b','1','2');
CREATE TYPE BDSP_enum AS ENUM ('bb','0');
CREATE TYPE BLD_enum AS ENUM ('bb','01','02','03','04','05','06','07','08','09','10');
CREATE TYPE BROADBND_enum AS ENUM ('b','1','2');
CREATE TYPE COMPOTHX_enum AS ENUM ('b','1','2');
CREATE TYPE CONP_enum AS ENUM ('bbbb','0');
CREATE TYPE DIALUP_enum AS ENUM ('b','1','2');
CREATE TYPE ELEFP_enum AS ENUM ('b','1','2','3');
CREATE TYPE ELEP_enum AS ENUM ('bbbb','3');
CREATE TYPE FS_enum AS ENUM ('b','1','2');
CREATE TYPE FULFP_enum AS ENUM ('b','1','2','3');
CREATE TYPE FULP_enum AS ENUM ('bbbb','3');
CREATE TYPE GASFP_enum AS ENUM ('b','1','2','3','4');
CREATE TYPE GASP_enum AS ENUM ('bbbb','4');
CREATE TYPE HFL_enum AS ENUM ('b','1','2','3','4','5','6','7','8','9');
CREATE TYPE HISPEED_enum AS ENUM ('b','1','2');
CREATE TYPE HOTWAT_enum AS ENUM ('b','1','2','9');
CREATE TYPE INSP_enum AS ENUM ('bbbbb','0','1');
CREATE TYPE LAPTOP_enum AS ENUM ('b','1','2');
CREATE TYPE MHP_enum AS ENUM ('bbbbb','0','1');
CREATE TYPE MRGI_enum AS ENUM ('1','2');
CREATE TYPE MRGP_enum AS ENUM ('1');
CREATE TYPE MRGT_enum AS ENUM ('1','2');
CREATE TYPE MRGX_enum AS ENUM ('b','2','3');
CREATE TYPE OTHSVCEX_enum AS ENUM ('b','1','2');
CREATE TYPE REFR_enum AS ENUM ('b','1','2');
CREATE TYPE RMSP_enum AS ENUM ('bb','1');
CREATE TYPE RNTM_enum AS ENUM ('b','1','2');
CREATE TYPE RNTP_enum AS ENUM ('bbbbb','1');
CREATE TYPE RWAT_enum AS ENUM ('b','1','2','9');
CREATE TYPE RWATPR_enum AS ENUM ('b','1','2','9');
CREATE TYPE SATELLITE_enum AS ENUM ('b','1','2');
CREATE TYPE SINK_enum AS ENUM ('b','1','2');
CREATE TYPE SMARTPHONE_enum AS ENUM ('b','1','2');
CREATE TYPE SMP_enum AS ENUM ('0','1');
CREATE TYPE STOV_enum AS ENUM ('b','1','2');
CREATE TYPE TABLET_enum AS ENUM ('b','1','2');
CREATE TYPE TEL_enum AS ENUM ('b','1','2');
CREATE TYPE TEN_enum AS ENUM ('b','2','3','4');
CREATE TYPE VACDUR_enum AS ENUM ('b','1','2','3','4','5','6','7');
CREATE TYPE VACOTH_enum AS ENUM ('bb',' 1',' 2',' 3',' 4',' 6',' 7',' 8',' 9','10','11');
CREATE TYPE VACS_enum AS ENUM ('b','1','2','3','4','5','6','7');
CREATE TYPE VALP_enum AS ENUM ('bbbbbbb','1');
CREATE TYPE VEH_enum AS ENUM ('b','0','1','2','3','4','5','6');
CREATE TYPE WATFP_enum AS ENUM ('b','1','2','3');
CREATE TYPE WATP_enum AS ENUM ('bbbb','3');
CREATE TYPE YRBLT_enum AS ENUM ('bbbb','1939','1940','1950','1960','1970','1980','1990','2000','2010','2020','2021','2022');
CREATE TYPE CPLT_enum AS ENUM ('b','1','2','3','4');
CREATE TYPE FINCP_enum AS ENUM ('bbbbbbb','0','-59999','-59998','1');
CREATE TYPE FPARC_enum AS ENUM ('b','1','2','3','4');
CREATE TYPE GRNTP_enum AS ENUM ('bbbbb','1');
CREATE TYPE GRPIP_enum AS ENUM ('bbb','1','101');
CREATE TYPE HHL_enum AS ENUM ('b','1','2');
CREATE TYPE HHLANP_enum AS ENUM ('bbbb','1000','1055','1069','1110','1120','1125','1130','1132','1134','1140','1141','1142','1155','1170','1175','1200','1210','1220','1231','1235','1242','1250','1260','1262','1263','1270','1273','1274','1275','1276','1277','1278','1281','1283','1288','1290','1292','1315','1327','1340','1350','1360','1380','1420','1435','1440','1450','1500','1530','1565','1582','1675','1690','1730','1737','1750','1765','1900','1960','1970','2000','2030','2050','2100','2160','2430','2475','2525','2535','2560','2575','2715','2770','2910','2920','2950','3150','3220','3270','3350','3420','3500','3570','4500','4545','4560','4565','4590','4640','4830','4840','5150','5345','5525','5940','5950','6120','6205','6290','6370','6839','6933','7050','9500');
CREATE TYPE HHLDRAGEP_enum AS ENUM ('bb','15');
CREATE TYPE HHLDRHISP_enum AS ENUM ('bb','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24');
CREATE TYPE HHLDRRAC1P_enum AS ENUM ('b','1','2','3','4','5','6','7','8','9');
CREATE TYPE HHT_enum AS ENUM ('b','1','2','3','4','5','6','7');
CREATE TYPE HHT2_enum AS ENUM ('bb','01','02','03','04','05','06','07','08','09','10','11','12');
CREATE TYPE HINCP_enum AS ENUM ('bbbbbbb','0','-59999','-59998','1');
CREATE TYPE HUGCL_enum AS ENUM ('b','0','1');
CREATE TYPE HUPAC_enum AS ENUM ('b','1','2','3','4');
CREATE TYPE HUPAOC_enum AS ENUM ('b','1','2','3','4');
CREATE TYPE HUPARC_enum AS ENUM ('b','1','2','3','4');
CREATE TYPE KIT_enum AS ENUM ('b','1','2');
CREATE TYPE LNGI_enum AS ENUM ('b','1','2');
CREATE TYPE MULTG_enum AS ENUM ('b','1','2');
CREATE TYPE MV_enum AS ENUM ('b','1','2','3','4','5','6','7');
CREATE TYPE NOC_enum AS ENUM ('bb','0');
CREATE TYPE NPF_enum AS ENUM ('bb');
CREATE TYPE NPP_enum AS ENUM ('b','0','1');
CREATE TYPE NR_enum AS ENUM ('b','0','1');
CREATE TYPE NRC_enum AS ENUM ('bb','0');
CREATE TYPE OCPIP_enum AS ENUM ('bbb','1','101');
CREATE TYPE PARTNER_enum AS ENUM ('b','0','1','2','3','4');
CREATE TYPE PLM_enum AS ENUM ('b','1','2','9');
CREATE TYPE PLMPRP_enum AS ENUM ('b','1','2','9');
CREATE TYPE PSF_enum AS ENUM ('b','0','1');
CREATE TYPE R18_enum AS ENUM ('b','0','1');
CREATE TYPE R60_enum AS ENUM ('b','0','1','2');
CREATE TYPE R65_enum AS ENUM ('b','0','1','2');
CREATE TYPE RESMODE_enum AS ENUM ('b','1','2','3');
CREATE TYPE SMOCP_enum AS ENUM ('bbbbb','0','1');
CREATE TYPE SMX_enum AS ENUM ('b','2','3');
CREATE TYPE SRNT_enum AS ENUM ('b','0');
CREATE TYPE SVAL_enum AS ENUM ('b','1');
CREATE TYPE TAXAMT_enum AS ENUM ('bbbbb','0');
CREATE TYPE WIF_enum AS ENUM ('b','0','1','2','3');
CREATE TYPE WKEXREL_enum AS ENUM ('bb','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15');
CREATE TYPE WORKSTAT_enum AS ENUM ('bb','01','02','03','04','05','06','07','08','09','10','11','12','13','14','15');
CREATE TYPE FACCESSP_enum AS ENUM ('b','0','1');
CREATE TYPE FACRP_enum AS ENUM ('b','0','1');
CREATE TYPE FAGSP_enum AS ENUM ('b','0','1');
CREATE TYPE FBATHP_enum AS ENUM ('b','0','1');
CREATE TYPE FBDSP_enum AS ENUM ('b','0','1');
CREATE TYPE FBLDP_enum AS ENUM ('b','0','1');
CREATE TYPE FBROADBNDP_enum AS ENUM ('b','0','1');
CREATE TYPE FCOMPOTHXP_enum AS ENUM ('b','0','1');
CREATE TYPE FCONP_enum AS ENUM ('b','0','1');
CREATE TYPE FDIALUPP_enum AS ENUM ('b','0','1');
CREATE TYPE FELEP_enum AS ENUM ('b','0','1');
CREATE TYPE FFINCP_enum AS ENUM ('b','0','1');
CREATE TYPE FFSP_enum AS ENUM ('0','1');
CREATE TYPE FFULP_enum AS ENUM ('b','0','1');
CREATE TYPE FGASP_enum AS ENUM ('b','0','1');
CREATE TYPE FGRNTP_enum AS ENUM ('b','0','1');
CREATE TYPE FHFLP_enum AS ENUM ('b','0','1');
CREATE TYPE FHINCP_enum AS ENUM ('b','0','1');
CREATE TYPE FHISPEEDP_enum AS ENUM ('b','0','1');
CREATE TYPE FHOTWATP_enum AS ENUM ('b','0','1');
CREATE TYPE FINSP_enum AS ENUM ('b','0','1');
CREATE TYPE FKITP_enum AS ENUM ('b','0','1');
CREATE TYPE FLAPTOPP_enum AS ENUM ('b','0','1');
CREATE TYPE FMHP_enum AS ENUM ('b','0','1');
CREATE TYPE FMRGIP_enum AS ENUM ('b','0','1');
CREATE TYPE FMRGP_enum AS ENUM ('b','0','1');
CREATE TYPE FMRGTP_enum AS ENUM ('b','0','1');
CREATE TYPE FMRGXP_enum AS ENUM ('b','0','1');
CREATE TYPE FMVP_enum AS ENUM ('b','0','1');
CREATE TYPE FOTHSVCEXP_enum AS ENUM ('b','0','1');
CREATE TYPE FPLMP_enum AS ENUM ('b','0','1');
CREATE TYPE FPLMPRP_enum AS ENUM ('b','0','1');
CREATE TYPE FREFRP_enum AS ENUM ('b','0','1');
CREATE TYPE FRMSP_enum AS ENUM ('b','0','1');
CREATE TYPE FRNTMP_enum AS ENUM ('b','0','1');
CREATE TYPE FRNTP_enum AS ENUM ('b','0','1');
CREATE TYPE FRWATP_enum AS ENUM ('b','0','1');
CREATE TYPE FRWATPRP_enum AS ENUM ('b','0','1');
CREATE TYPE FSATELLITEP_enum AS ENUM ('b','0','1');
CREATE TYPE FSINKP_enum AS ENUM ('b','0','1');
CREATE TYPE FSMARTPHONP_enum AS ENUM ('b','0','1');
CREATE TYPE FSMOCP_enum AS ENUM ('b','0','1');
CREATE TYPE FSMP_enum AS ENUM ('b','0','1');
CREATE TYPE FSMXHP_enum AS ENUM ('b','0','1');
CREATE TYPE FSMXSP_enum AS ENUM ('b','0','1');
CREATE TYPE FSTOVP_enum AS ENUM ('b','0','1');
CREATE TYPE FTABLETP_enum AS ENUM ('b','0','1');
CREATE TYPE FTAXP_enum AS ENUM ('b','0','1');
CREATE TYPE FTELP_enum AS ENUM ('b','0','1');
CREATE TYPE FTENP_enum AS ENUM ('b','0','1');
CREATE TYPE FVACDURP_enum AS ENUM ('b','0','1');
CREATE TYPE FVACOTHP_enum AS ENUM ('b','0','1');
CREATE TYPE FVACSP_enum AS ENUM ('b','0','1');
CREATE TYPE FVALP_enum AS ENUM ('b','0','1');
CREATE TYPE FVEHP_enum AS ENUM ('b','0','1');
CREATE TYPE FWATP_enum AS ENUM ('b','0','1');
CREATE TYPE FYRBLTP_enum AS ENUM ('b','0','1');

CREATE TABLE housing_units_wisconsin (
    RT RT_enum,
    SERIALNO VARCHAR,
    DIVISION DIVISION_enum,
    PUMA VARCHAR,
    REGION REGION_enum,
    ST ST_enum,
    ADJHSG ADJHSG_enum,
    ADJINC ADJINC_enum,
    WGTP WGTP_enum,
    NP NP_enum,
    TYPEHUGQ TYPEHUGQ_enum,
    ACCESSINET ACCESSINET_enum,
    ACR ACR_enum,
    AGS AGS_enum,
    BATH BATH_enum,
    BDSP BDSP_enum,
    BLD BLD_enum,
    BROADBND BROADBND_enum,
    COMPOTHX COMPOTHX_enum,
    CONP CONP_enum,
    DIALUP DIALUP_enum,
    ELEFP ELEFP_enum,
    ELEP ELEP_enum,
    FS FS_enum,
    FULFP FULFP_enum,
    FULP FULP_enum,
    GASFP GASFP_enum,
    GASP GASP_enum,
    HFL HFL_enum,
    HISPEED HISPEED_enum,
    HOTWAT HOTWAT_enum,
    INSP INSP_enum,
    LAPTOP LAPTOP_enum,
    MHP MHP_enum,
    MRGI MRGI_enum,
    MRGP MRGP_enum,
    MRGT MRGT_enum,
    MRGX MRGX_enum,
    OTHSVCEX OTHSVCEX_enum,
    REFR REFR_enum,
    RMSP RMSP_enum,
    RNTM RNTM_enum,
    RNTP RNTP_enum,
    RWAT RWAT_enum,
    RWATPR RWATPR_enum,
    SATELLITE SATELLITE_enum,
    SINK SINK_enum,
    SMARTPHONE SMARTPHONE_enum,
    SMP SMP_enum,
    STOV STOV_enum,
    TABLET TABLET_enum,
    TEL TEL_enum,
    TEN TEN_enum,
    VACDUR VACDUR_enum,
    VACOTH VACOTH_enum,
    VACS VACS_enum,
    VALP VALP_enum,
    VEH VEH_enum,
    WATFP WATFP_enum,
    WATP WATP_enum,
    YRBLT YRBLT_enum,
    CPLT CPLT_enum,
    FINCP FINCP_enum,
    FPARC FPARC_enum,
    GRNTP GRNTP_enum,
    GRPIP GRPIP_enum,
    HHL HHL_enum,
    HHLANP HHLANP_enum,
    HHLDRAGEP HHLDRAGEP_enum,
    HHLDRHISP HHLDRHISP_enum,
    HHLDRRAC1P HHLDRRAC1P_enum,
    HHT HHT_enum,
    HHT2 HHT2_enum,
    HINCP HINCP_enum,
    HUGCL HUGCL_enum,
    HUPAC HUPAC_enum,
    HUPAOC HUPAOC_enum,
    HUPARC HUPARC_enum,
    KIT KIT_enum,
    LNGI LNGI_enum,
    MULTG MULTG_enum,
    MV MV_enum,
    NOC NOC_enum,
    NPF NPF_enum,
    NPP NPP_enum,
    NR NR_enum,
    NRC NRC_enum,
    OCPIP OCPIP_enum,
    PARTNER PARTNER_enum,
    PLM PLM_enum,
    PLMPRP PLMPRP_enum,
    PSF PSF_enum,
    R18 R18_enum,
    R60 R60_enum,
    R65 R65_enum,
    RESMODE RESMODE_enum,
    SMOCP SMOCP_enum,
    SMX SMX_enum,
    SRNT SRNT_enum,
    SVAL SVAL_enum,
    TAXAMT TAXAMT_enum,
    WIF WIF_enum,
    WKEXREL WKEXREL_enum,
    WORKSTAT WORKSTAT_enum,
    FACCESSP FACCESSP_enum,
    FACRP FACRP_enum,
    FAGSP FAGSP_enum,
    FBATHP FBATHP_enum,
    FBDSP FBDSP_enum,
    FBLDP FBLDP_enum,
    FBROADBNDP FBROADBNDP_enum,
    FCOMPOTHXP FCOMPOTHXP_enum,
    FCONP FCONP_enum,
    FDIALUPP FDIALUPP_enum,
    FELEP FELEP_enum,
    FFINCP FFINCP_enum,
    FFSP FFSP_enum,
    FFULP FFULP_enum,
    FGASP FGASP_enum,
    FGRNTP FGRNTP_enum,
    FHFLP FHFLP_enum,
    FHINCP FHINCP_enum,
    FHISPEEDP FHISPEEDP_enum,
    FHOTWATP FHOTWATP_enum,
    FINSP FINSP_enum,
    FKITP FKITP_enum,
    FLAPTOPP FLAPTOPP_enum,
    FMHP FMHP_enum,
    FMRGIP FMRGIP_enum,
    FMRGP FMRGP_enum,
    FMRGTP FMRGTP_enum,
    FMRGXP FMRGXP_enum,
    FMVP FMVP_enum,
    FOTHSVCEXP FOTHSVCEXP_enum,
    FPLMP FPLMP_enum,
    FPLMPRP FPLMPRP_enum,
    FREFRP FREFRP_enum,
    FRMSP FRMSP_enum,
    FRNTMP FRNTMP_enum,
    FRNTP FRNTP_enum,
    FRWATP FRWATP_enum,
    FRWATPRP FRWATPRP_enum,
    FSATELLITEP FSATELLITEP_enum,
    FSINKP FSINKP_enum,
    FSMARTPHONP FSMARTPHONP_enum,
    FSMOCP FSMOCP_enum,
    FSMP FSMP_enum,
    FSMXHP FSMXHP_enum,
    FSMXSP FSMXSP_enum,
    FSTOVP FSTOVP_enum,
    FTABLETP FTABLETP_enum,
    FTAXP FTAXP_enum,
    FTELP FTELP_enum,
    FTENP FTENP_enum,
    FVACDURP FVACDURP_enum,
    FVACOTHP FVACOTHP_enum,
    FVACSP FVACSP_enum,
    FVALP FVALP_enum,
    FVEHP FVEHP_enum,
    FWATP FWATP_enum,
    FYRBLTP FYRBLTP_enum,
    WGTP1 VARCHAR,
    WGTP2 VARCHAR,
    WGTP3 VARCHAR,
    WGTP4 VARCHAR,
    WGTP5 VARCHAR,
    WGTP6 VARCHAR,
    WGTP7 VARCHAR,
    WGTP8 VARCHAR,
    WGTP9 VARCHAR,
    WGTP10 VARCHAR,
    WGTP11 VARCHAR,
    WGTP12 VARCHAR,
    WGTP13 VARCHAR,
    WGTP14 VARCHAR,
    WGTP15 VARCHAR,
    WGTP16 VARCHAR,
    WGTP17 VARCHAR,
    WGTP18 VARCHAR,
    WGTP19 VARCHAR,
    WGTP20 VARCHAR,
    WGTP21 VARCHAR,
    WGTP22 VARCHAR,
    WGTP23 VARCHAR,
    WGTP24 VARCHAR,
    WGTP25 VARCHAR,
    WGTP26 VARCHAR,
    WGTP27 VARCHAR,
    WGTP28 VARCHAR,
    WGTP29 VARCHAR,
    WGTP30 VARCHAR,
    WGTP31 VARCHAR,
    WGTP32 VARCHAR,
    WGTP33 VARCHAR,
    WGTP34 VARCHAR,
    WGTP35 VARCHAR,
    WGTP36 VARCHAR,
    WGTP37 VARCHAR,
    WGTP38 VARCHAR,
    WGTP39 VARCHAR,
    WGTP40 VARCHAR,
    WGTP41 VARCHAR,
    WGTP42 VARCHAR,
    WGTP43 VARCHAR,
    WGTP44 VARCHAR,
    WGTP45 VARCHAR,
    WGTP46 VARCHAR,
    WGTP47 VARCHAR,
    WGTP48 VARCHAR,
    WGTP49 VARCHAR,
    WGTP50 VARCHAR,
    WGTP51 VARCHAR,
    WGTP52 VARCHAR,
    WGTP53 VARCHAR,
    WGTP54 VARCHAR,
    WGTP55 VARCHAR,
    WGTP56 VARCHAR,
    WGTP57 VARCHAR,
    WGTP58 VARCHAR,
    WGTP59 VARCHAR,
    WGTP60 VARCHAR,
    WGTP61 VARCHAR,
    WGTP62 VARCHAR,
    WGTP63 VARCHAR,
    WGTP64 VARCHAR,
    WGTP65 VARCHAR,
    WGTP66 VARCHAR,
    WGTP67 VARCHAR,
    WGTP68 VARCHAR,
    WGTP69 VARCHAR,
    WGTP70 VARCHAR,
    WGTP71 VARCHAR,
    WGTP72 VARCHAR,
    WGTP73 VARCHAR,
    WGTP74 VARCHAR,
    WGTP75 VARCHAR,
    WGTP76 VARCHAR,
    WGTP77 VARCHAR,
    WGTP78 VARCHAR,
    WGTP79 VARCHAR,
    WGTP80 VARCHAR
);

INSERT INTO housing_units_wisconsin
SELECT * FROM read_csv('/Users/me/data/american_community_survey/2022/1-Year/csv_hwi/psam_h55.csv', 
              parallel=False,
              all_varchar=True,
              auto_detect=True)