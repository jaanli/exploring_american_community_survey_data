-- SQL transformation for psam_p54.csv generated by generate_sql_data_dictionary_mapping_for_extracted_csv_files.py
{{ config(materialized='external', location=var('output_path') + '/individual_people_west_virginia.parquet') }}
SELECT
    RT AS "Record Type",
    SERIALNO AS "Housing unit/GQ person serial number",
    DIVISION AS "Division code based on 2010 Census definitions Division code based on 2020 Census definitions",
    SPORDER AS "Person number",
    PUMA AS "Public use microdata area code (PUMA) based on 2020 Census definition (areas with population of 100,000 or more, use with ST for unique code)",
    REGION AS "Region code based on 2020 Census definitions",
    ST AS "State Code based on 2020 Census definitions",
    ADJINC AS "Adjustment factor for income and earnings dollar amounts (6 implied decimal places)",
    PWGTP AS "Person's weight",
    AGEP AS "Age",
    CIT AS "Citizenship status",
    CITWP AS "Year of naturalization write-in",
    COW AS "Class of worker",
    DDRS AS "Self-care difficulty",
    DEAR AS "Hearing difficulty",
    DEYE AS "Vision difficulty",
    DOUT AS "Independent living difficulty",
    DPHY AS "Ambulatory difficulty",
    DRAT AS "Veteran service-connected disability rating (percentage)",
    DRATX AS "Veteran service-connected disability rating (checkbox)",
    DREM AS "Cognitive difficulty",
    ENG AS "Ability to speak English",
    FER AS "Gave birth to child within the past 12 months",
    GCL AS "Grandparents living with grandchildren",
    GCM AS "Length of time responsible for grandchildren",
    GCR AS "Grandparents responsible for grandchildren",
    HIMRKS AS "Subsidized Marketplace Coverage",
    HINS1 AS "Insurance through a current or former employer or union",
    HINS2 AS "Insurance purchased directly from an insurance company",
    HINS3 AS "Medicare, for people 65 and older, or people with certain disabilities",
    HINS4 AS "Medicaid, Medical Assistance, or any kind of government-assistance plan for those with low incomes or a disability",
    HINS5 AS "TRICARE or other military health care",
    HINS6 AS "VA (enrolled for VA health care)",
    HINS7 AS "Indian Health Service",
    INTP AS "Interest, dividends, and net rental income past 12 months (use ADJINC to adjust to constant dollars)",
    JWMNP AS "Travel time to work",
    JWRIP AS "Vehicle occupancy",
    JWTRNS AS "Means of transportation to work",
    LANX AS "Language other than English spoken at home",
    MAR AS "Marital status",
    MARHD AS "Divorced in the past 12 months",
    MARHM AS "Married in the past 12 months",
    MARHT AS "Number of times married",
    MARHW AS "Widowed in the past 12 months",
    MARHYP AS "Year last married",
    MIG AS "Mobility status (lived here 1 year ago)",
    MIL AS "Military service",
    MLPA AS "Served September 2001 or later",
    MLPB AS "Served August 1990 - August 2001 (including Persian Gulf War)",
    MLPCD AS "Served May 1975 - July 1990",
    MLPE AS "Served Vietnam era (August 1964 - April 1975)",
    MLPFG AS "Served February 1955 - July 1964",
    MLPH AS "Served Korean War (July 1950 - January 1955)",
    MLPIK AS "Peacetime service before July 1950",
    MLPJ AS "Served World War II (December 1941 - December 1946)",
    NWAB AS "Temporary absence from work (UNEDITED - See 'Employment Status Recode' (ESR))",
    NWAV AS "Available for work (UNEDITED - See 'Employment Status Recode' (ESR))",
    NWLA AS "On layoff from work (UNEDITED - See 'Employment Status Recode' (ESR))",
    NWLK AS "Looking for work (UNEDITED - See 'Employment Status Recode' (ESR))",
    NWRE AS "Informed of recall (UNEDITED - See 'Employment Status Recode' (ESR))",
    OIP AS "All other income past 12 months (use ADJINC to adjust to constant dollars)",
    PAP AS "Public assistance income past 12 months (use ADJINC to adjust to constant dollars)",
    RELSHIPP AS "Relationship",
    RETP AS "Retirement income past 12 months (use ADJINC to adjust to constant dollars)",
    SCH AS "School enrollment",
    SCHG AS "Grade level attending",
    SCHL AS "Educational attainment",
    SEMP AS "Self-employment income past 12 months (use ADJINC to adjust SEMP to constant dollars)",
    SEX AS "Sex",
    SSIP AS "Supplementary Security Income past 12 months (use ADJINC to adjust SSIP to constant dollars)",
    SSP AS "Social Security income past 12 months (use ADJINC to adjust SSP to constant dollars)",
    WAGP AS "Wages or salary income past 12 months (use ADJINC to adjust WAGP to constant dollars)",
    WKHP AS "Usual hours worked per week past 12 months",
    WKL AS "When last worked",
    WKWN AS "Weeks worked during past 12 months",
    WRK AS "Worked last week",
    YOEP AS "Year of entry",
    ANC AS "Ancestry recode",
    ANC1P AS "Recoded Detailed Ancestry - first entry",
    ANC2P AS "Recoded Detailed Ancestry - second entry",
    DECADE AS "Decade of entry",
    DIS AS "Disability recode",
    DRIVESP AS "Number of vehicles calculated from JWRI",
    ESP AS "Employment status of parents",
    ESR AS "Employment status recode",
    FOD1P AS "Recoded field of degree - first entry",
    FOD2P AS "Recoded field of degree - second entry",
    HICOV AS "Health insurance coverage recode",
    HISP AS "Recoded detailed Hispanic origin",
    INDP AS "Industry recode for 2018 and later based on 2017 IND codes",
    JWAP AS "Time of arrival at work - hour and minute",
    JWDP AS "Time of departure for work - hour and minute",
    LANP AS "Language spoken at home",
    MIGPUMA AS "Migration PUMA based on 2020 Census definition",
    MIGSP AS "Migration recode - State or foreign country code",
    MSP AS "Married, spouse present/spouse absent",
    NAICSP AS "North American Industry Classification System (NAICS) recode for 2018 and later based on 2017 NAICS codes",
    NATIVITY AS "Nativity",
    NOP AS "Nativity of parent",
    OC AS "Own child",
    OCCP AS "Occupation recode for 2018 and later based on 2018 OCC codes",
    PAOC AS "Presence and age of own children",
    PERNP AS "Total person's earnings (use ADJINC to adjust to constant dollars)",
    PINCP AS "Total person's income (use ADJINC to adjust to constant dollars)",
    POBP AS "Place of birth (Recode)",
    POVPIP AS "Income-to-poverty ratio recode",
    POWPUMA AS "Place of work PUMA based on 2020 Census definition",
    POWSP AS "Place of work - State or foreign country recode",
    PRIVCOV AS "Private health insurance coverage recode",
    PUBCOV AS "Public health coverage recode",
    QTRBIR AS "Quarter of birth",
    RAC1P AS "Recoded detailed race code",
    RAC2P AS "Recoded detailed race code",
    RAC3P AS "Recoded detailed race code",
    RACAIAN AS "American Indian and Alaska Native recode (American Indian and Alaska Native alone or in combination with one or more other races)",
    RACASN AS "Asian recode (Asian alone or in combination with one or more other races)",
    RACBLK AS "Black or African American recode (Black alone or in combination with one or more other races)",
    RACNH AS "Native Hawaiian recode (Native Hawaiian alone or in combination with one or more other races)",
    RACNUM AS "Number of major race groups represented",
    RACPI AS "Other Pacific Islander recode (Other Pacific Islander alone or in combination with one or more other races)",
    RACSOR AS "Some other race recode (Some other race alone or in combination with one or more other races)",
    RACWHT AS "White recode (White alone or in combination with one or more other races)",
    RC AS "Related child",
    SCIENGP AS "Field of Degree Science and Engineering Flag - NSF Definition",
    SCIENGRLP AS "Field of Degree Science and Engineering Related Flag - NSF Definition",
    SFN AS "Subfamily number",
    SFR AS "Subfamily relationship",
    SOCP AS "Standard Occupational Classification (SOC) codes for 2018 and later based on 2018 SOC codes",
    VPS AS "Veteran period of service",
    WAOB AS "World area of birth",
    FAGEP AS "Age allocation flag",
    FANCP AS "Ancestry allocation flag",
    FCITP AS "Citizenship allocation flag",
    FCITWP AS "Year of naturalization write-in allocation flag",
    FCOWP AS "Class of worker allocation flag",
    FDDRSP AS "Self-care difficulty allocation flag",
    FDEARP AS "Hearing difficulty allocation flag",
    FDEYEP AS "Vision difficulty allocation flag",
    FDISP AS "Disability recode allocation flag",
    FDOUTP AS "Independent living difficulty allocation flag",
    FDPHYP AS "Ambulatory difficulty allocation flag",
    FDRATP AS "Disability rating percentage allocation flag",
    FDRATXP AS "Disability rating checkbox allocation flag",
    FDREMP AS "Cognitive difficulty allocation flag",
    FENGP AS "Ability to speak English allocation flag",
    FESRP AS "Employment status recode allocation flag",
    FFERP AS "Gave birth to child within the past 12 months allocation flag",
    FFODP AS "Field of Degree allocation flag",
    FGCLP AS "Grandparents living with grandchildren allocation flag",
    FGCMP AS "Length of time responsible for grandchildren allocation flag",
    FGCRP AS "Grandparents responsible for grandchildren allocation flag",
    FHICOVP AS "Health insurance coverage recode allocation flag",
    FHIMRKSP AS "Subsidized Marketplace Coverage allocation flag",
    FHINS1P AS "Insurance through a current or former employer or union allocation flag",
    FHINS2P AS "Insurance purchased directly from an insurance company allocation flag",
    FHINS3C AS "Medicare coverage given through the eligibility coverage edit",
    FHINS3P AS "Medicare, for people 65 or older, or people with certain disabilities allocation flag",
    FHINS4C AS "Medicaid coverage given through the eligibility coverage edit",
    FHINS4P AS "Medicaid, medical assistance, or any kind of government-assistance plan for people with low incomes or a disability allocation flag",
    FHINS5C AS "TRICARE coverage given through the eligibility coverage edit",
    FHINS5P AS "TRICARE or other military health care allocation flag",
    FHINS6P AS "VA (enrolled for VA health care) allocation flag",
    FHINS7P AS "Indian health service allocation flag",
    FHISP AS "Detailed Hispanic origin allocation flag",
    FINDP AS "Industry allocation flag",
    FINTP AS "Interest, dividend, and net rental income allocation flag",
    FJWDP AS "Time of departure to work allocation flag",
    FJWMNP AS "Travel time to work allocation flag",
    FJWRIP AS "Vehicle occupancy allocation flag",
    FJWTRNSP AS "Means of transportation to work allocation flag",
    FLANP AS "Language spoken at home allocation flag",
    FLANXP AS "Language other than English allocation flag",
    FMARP AS "Marital status allocation flag",
    FMARHDP AS "Divorced in the past 12 months allocation flag",
    FMARHMP AS "Married in the past 12 months allocation flag",
    FMARHTP AS "Times married allocation flag",
    FMARHWP AS "Widowed in the past 12 months allocation flag",
    FMARHYP AS "Year last married allocation flag",
    FMIGP AS "Mobility status allocation flag",
    FMIGSP AS "Migration state and foreign country allocation flag",
    FMILPP AS "Military periods of service allocation flag",
    FMILSP AS "Military service allocation flag",
    FOCCP AS "Occupation allocation flag",
    FOIP AS "All other income allocation flag",
    FPAP AS "Public assistance income allocation flag",
    FPERNP AS "Total person's earnings allocation flag",
    FPINCP AS "Total person's income allocation flag",
    FPOBP AS "Place of birth allocation flag",
    FPOWSP AS "Place of work state allocation flag",
    FPRIVCOVP AS "Private health insurance coverage recode allocation flag",
    FPUBCOVP AS "Public health coverage recode allocation flag",
    FRACP AS "Detailed race allocation flag",
    FRELSHIPP AS "Relationship allocation flag",
    FRETP AS "Retirement income allocation flag",
    FSCHGP AS "Grade attending allocation flag",
    FSCHLP AS "Highest education allocation flag",
    FSCHP AS "School enrollment allocation flag",
    FSEMP AS "Self-employment income allocation flag",
    FSEXP AS "Sex allocation flag",
    FSSIP AS "Supplementary Security Income allocation flag",
    FSSP AS "Social Security income allocation flag",
    FWAGP AS "Wages and salary income allocation flag",
    FWKHP AS "Usual hours worked per week past 12 months allocation flag",
    FWKLP AS "Last worked allocation flag",
    FWKWNP AS "Weeks worked past 12 months allocation flag",
    FWRKP AS "Worked last week allocation flag",
    FYOEP AS "Year of entry allocation flag",
    PWGTP1 AS "Person's Weight replicate 1",
    PWGTP2 AS "Person's Weight replicate 2",
    PWGTP3 AS "Person's Weight replicate 3",
    PWGTP4 AS "Person's Weight replicate 4",
    PWGTP5 AS "Person's Weight replicate 5",
    PWGTP6 AS "Person's Weight replicate 6",
    PWGTP7 AS "Person's Weight replicate 7",
    PWGTP8 AS "Person's Weight replicate 8",
    PWGTP9 AS "Person's Weight replicate 9",
    PWGTP10 AS "Person's Weight replicate 10",
    PWGTP11 AS "Person's Weight replicate 11",
    PWGTP12 AS "Person's Weight replicate 12",
    PWGTP13 AS "Person's Weight replicate 13",
    PWGTP14 AS "Person's Weight replicate 14",
    PWGTP15 AS "Person's Weight replicate 15",
    PWGTP16 AS "Person's Weight replicate 16",
    PWGTP17 AS "Person's Weight replicate 17",
    PWGTP18 AS "Person's Weight replicate 18",
    PWGTP19 AS "Person's Weight replicate 19",
    PWGTP20 AS "Person's Weight replicate 20",
    PWGTP21 AS "Person's Weight replicate 21",
    PWGTP22 AS "Person's Weight replicate 22",
    PWGTP23 AS "Person's Weight replicate 23",
    PWGTP24 AS "Person's Weight replicate 24",
    PWGTP25 AS "Person's Weight replicate 25",
    PWGTP26 AS "Person's Weight replicate 26",
    PWGTP27 AS "Person's Weight replicate 27",
    PWGTP28 AS "Person's Weight replicate 28",
    PWGTP29 AS "Person's Weight replicate 29",
    PWGTP30 AS "Person's Weight replicate 30",
    PWGTP31 AS "Person's Weight replicate 31",
    PWGTP32 AS "Person's Weight replicate 32",
    PWGTP33 AS "Person's Weight replicate 33",
    PWGTP34 AS "Person's Weight replicate 34",
    PWGTP35 AS "Person's Weight replicate 35",
    PWGTP36 AS "Person's Weight replicate 36",
    PWGTP37 AS "Person's Weight replicate 37",
    PWGTP38 AS "Person's Weight replicate 38",
    PWGTP39 AS "Person's Weight replicate 39",
    PWGTP40 AS "Person's Weight replicate 40",
    PWGTP41 AS "Person's Weight replicate 41",
    PWGTP42 AS "Person's Weight replicate 42",
    PWGTP43 AS "Person's Weight replicate 43",
    PWGTP44 AS "Person's Weight replicate 44",
    PWGTP45 AS "Person's Weight replicate 45",
    PWGTP46 AS "Person's Weight replicate 46",
    PWGTP47 AS "Person's Weight replicate 47",
    PWGTP48 AS "Person's Weight replicate 48",
    PWGTP49 AS "Person's Weight replicate 49",
    PWGTP50 AS "Person's Weight replicate 50",
    PWGTP51 AS "Person's Weight replicate 51",
    PWGTP52 AS "Person's Weight replicate 52",
    PWGTP53 AS "Person's Weight replicate 53",
    PWGTP54 AS "Person's Weight replicate 54",
    PWGTP55 AS "Person's Weight replicate 55",
    PWGTP56 AS "Person's Weight replicate 56",
    PWGTP57 AS "Person's Weight replicate 57",
    PWGTP58 AS "Person's Weight replicate 58",
    PWGTP59 AS "Person's Weight replicate 59",
    PWGTP60 AS "Person's Weight replicate 60",
    PWGTP61 AS "Person's Weight replicate 61",
    PWGTP62 AS "Person's Weight replicate 62",
    PWGTP63 AS "Person's Weight replicate 63",
    PWGTP64 AS "Person's Weight replicate 64",
    PWGTP65 AS "Person's Weight replicate 65",
    PWGTP66 AS "Person's Weight replicate 66",
    PWGTP67 AS "Person's Weight replicate 67",
    PWGTP68 AS "Person's Weight replicate 68",
    PWGTP69 AS "Person's Weight replicate 69",
    PWGTP70 AS "Person's Weight replicate 70",
    PWGTP71 AS "Person's Weight replicate 71",
    PWGTP72 AS "Person's Weight replicate 72",
    PWGTP73 AS "Person's Weight replicate 73",
    PWGTP74 AS "Person's Weight replicate 74",
    PWGTP75 AS "Person's Weight replicate 75",
    PWGTP76 AS "Person's Weight replicate 76",
    PWGTP77 AS "Person's Weight replicate 77",
    PWGTP78 AS "Person's Weight replicate 78",
    PWGTP79 AS "Person's Weight replicate 79",
    PWGTP80 AS "Person's Weight replicate 80"
FROM read_csv_auto('/Users/me/data/american_community_survey/2022/1-Year/csv_pwv/psam_p54.csv')