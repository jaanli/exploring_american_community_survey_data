# Using data build tool to process the entire American Community Survey individual-level and household data in 5 minutes

Using the Census Bureau's American Community Survey (ACS) data with `dbt` (data build tool) for creating compressed parquet files for exploratory data analysis and downstream applications.

## Examples

Examples are in the `/examples` directory:

## Usage for 2022 ACS Public Use Microdata Sample (PUMS) Data

To retrieve the list of URLs from the Census Bureau's server and download and extract the archives for all of the 50 states' PUMS files, run the following:
```
cd american_community_survey
dbt run --exclude "public_use_microdata_sample.generated+" --vars '{"public_use_microdata_sample_url": "https://www2.census.gov/programs-surveys/acs/data/pums/2022/1-Year/", "public_use_microdata_sample_data_dictionary_url": "https://www2.census.gov/programs-surveys/acs/tech_docs/pums/data_dict/PUMS_Data_Dictionary_2022.csv", "output_path": "~/data/american_community_survey"}'
```

Then generate the SQL commands needed to map every state's individual people or housing unit variables to the easier to use (and read) names:

```
python scripts/generate_sql_data_dictionary_mapping_for_extracted_csv_files.py \
  ~/data/american_community_survey/public_use_microdata_sample_csv_paths.parquet \
  ~/data/american_community_survey/PUMS_Data_Dictionary_2022.json
```

Then execute these generated SQL queries using 1 thread (you can adjust this number to be higher depending on the available processor cores on your system):
```
dbt run --select "public_use_microdata_sample.generated+" --vars '{"public_use_microdata_sample_url": "https://www2.census.gov/programs-surveys/acs/data/pums/2022/1-Year/", "public_use_microdata_sample_data_dictionary_url": "https://www2.census.gov/programs-surveys/acs/tech_docs/pums/data_dict/PUMS_Data_Dictionary_2022.csv", "output_path": "~/data/american_community_survey"}' --threads 1
```

Inspect the output folder to see what has been created in the `output_path` specified in the previous command:
```
❯ tree -hF -I '*.pdf' ~/data/american_community_survey                
[ 224]  /Users/me/data/american_community_survey/
├── [ 128]  2022/
│   └── [3.4K]  1-Year/
│       ├── [ 128]  csv_hak/
│       │   └── [2.1M]  psam_h02.csv
│       ├── [ 128]  csv_hal/
│       │   └── [ 15M]  psam_h01.csv
│       ├── [ 128]  csv_har/
│       │   └── [9.0M]  psam_h05.csv
│       ├── [ 128]  csv_haz/
│       │   └── [ 20M]  psam_h04.csv
│       ├── [ 128]  csv_hca/
│       │   └── [ 95M]  psam_h06.csv
│       ├── [ 128]  csv_hco/
│       │   └── [ 17M]  psam_h08.csv
│       ├── [ 128]  csv_hct/
│       │   └── [ 10M]  psam_h09.csv
│       ├── [ 128]  csv_hdc/
│       │   └── [2.3M]  psam_h11.csv
│       ├── [ 128]  csv_hde/
│       │   └── [2.9M]  psam_h10.csv
│       ├── [ 128]  csv_hfl/
│       │   └── [ 63M]  psam_h12.csv
│       ├── [ 128]  csv_hga/
│       │   └── [ 29M]  psam_h13.csv
│       ├── [ 128]  csv_hhi/
│       │   └── [3.7M]  psam_h15.csv
│       ├── [ 128]  csv_hia/
│       │   └── [9.4M]  psam_h19.csv
│       ├── [ 128]  csv_hid/
│       │   └── [5.2M]  psam_h16.csv
│       ├── [ 128]  csv_hil/
│       │   └── [ 35M]  psam_h17.csv
│       ├── [ 128]  csv_hin/
│       │   └── [ 19M]  psam_h18.csv
│       ├── [ 128]  csv_hks/
│       │   └── [8.3M]  psam_h20.csv
│       ├── [ 128]  csv_hky/
│       │   └── [ 13M]  psam_h21.csv
│       ├── [ 128]  csv_hla/
│       │   └── [ 13M]  psam_h22.csv
│       ├── [ 128]  csv_hma/
│       │   └── [ 20M]  psam_h25.csv
│       ├── [ 128]  csv_hmd/
│       │   └── [ 16M]  psam_h24.csv
│       ├── [ 128]  csv_hme/
│       │   └── [4.8M]  psam_h23.csv
│       ├── [ 128]  csv_hmi/
│       │   └── [ 29M]  psam_h26.csv
│       ├── [ 128]  csv_hmn/
│       │   └── [ 16M]  psam_h27.csv
│       ├── [ 128]  csv_hmo/
│       │   └── [ 18M]  psam_h29.csv
│       ├── [ 128]  csv_hms/
│       │   └── [8.6M]  psam_h28.csv
│       ├── [ 128]  csv_hmt/
│       │   └── [3.3M]  psam_h30.csv
│       ├── [ 128]  csv_hnc/
│       │   └── [ 32M]  psam_h37.csv
│       ├── [ 128]  csv_hnd/
│       │   └── [2.4M]  psam_h38.csv
│       ├── [ 128]  csv_hne/
│       │   └── [5.5M]  psam_h31.csv
│       ├── [ 128]  csv_hnh/
│       │   └── [4.1M]  psam_h33.csv
│       ├── [ 128]  csv_hnj/
│       │   └── [ 24M]  psam_h34.csv
│       ├── [ 128]  csv_hnm/
│       │   └── [6.0M]  psam_h35.csv
│       ├── [ 128]  csv_hnv/
│       │   └── [8.2M]  psam_h32.csv
│       ├── [ 128]  csv_hny/
│       │   └── [ 56M]  psam_h36.csv
│       ├── [ 128]  csv_hoh/
│       │   └── [ 34M]  psam_h39.csv
│       ├── [ 128]  csv_hok/
│       │   └── [ 11M]  psam_h40.csv
│       ├── [ 128]  csv_hor/
│       │   └── [ 12M]  psam_h41.csv
│       ├── [ 128]  csv_hpa/
│       │   └── [ 38M]  psam_h42.csv
│       ├── [ 128]  csv_hpr/
│       │   └── [9.8M]  psam_h72.csv
│       ├── [ 128]  csv_hri/
│       │   └── [3.0M]  psam_h44.csv
│       ├── [ 128]  csv_hsc/
│       │   └── [ 16M]  psam_h45.csv
│       ├── [ 128]  csv_hsd/
│       │   └── [2.6M]  psam_h46.csv
│       ├── [ 128]  csv_htn/
│       │   └── [ 20M]  psam_h47.csv
│       ├── [ 128]  csv_htx/
│       │   └── [ 76M]  psam_h48.csv
│       ├── [ 160]  csv_hus/
│       │   ├── [468M]  psam_husa.csv
│       │   └── [452M]  psam_husb.csv
│       ├── [ 128]  csv_hut/
│       │   └── [7.9M]  psam_h49.csv
│       ├── [ 128]  csv_hva/
│       │   └── [ 24M]  psam_h51.csv
│       ├── [ 128]  csv_hvt/
│       │   └── [2.2M]  psam_h50.csv
│       ├── [ 128]  csv_hwa/
│       │   └── [ 21M]  psam_h53.csv
│       ├── [ 128]  csv_hwi/
│       │   └── [ 18M]  psam_h55.csv
│       ├── [ 128]  csv_hwv/
│       │   └── [5.5M]  psam_h54.csv
│       ├── [ 128]  csv_hwy/
│       │   └── [1.7M]  psam_h56.csv
│       ├── [ 128]  csv_pak/
│       │   └── [4.6M]  psam_p02.csv
│       ├── [ 128]  csv_pal/
│       │   └── [ 34M]  psam_p01.csv
│       ├── [ 128]  csv_par/
│       │   └── [ 21M]  psam_p05.csv
│       ├── [ 128]  csv_paz/
│       │   └── [ 50M]  psam_p04.csv
│       ├── [ 128]  csv_pca/
│       │   └── [263M]  psam_p06.csv
│       ├── [ 128]  csv_pco/
│       │   └── [ 40M]  psam_p08.csv
│       ├── [ 128]  csv_pct/
│       │   └── [ 25M]  psam_p09.csv
│       ├── [ 128]  csv_pdc/
│       │   └── [4.6M]  psam_p11.csv
│       ├── [ 128]  csv_pde/
│       │   └── [6.5M]  psam_p10.csv
│       ├── [ 128]  csv_pfl/
│       │   └── [147M]  psam_p12.csv
│       ├── [ 128]  csv_pga/
│       │   └── [ 73M]  psam_p13.csv
│       ├── [ 128]  csv_phi/
│       │   └── [ 10M]  psam_p15.csv
│       ├── [ 128]  csv_pia/
│       │   └── [ 22M]  psam_p19.csv
│       ├── [ 128]  csv_pid/
│       │   └── [ 13M]  psam_p16.csv
│       ├── [ 128]  csv_pil/
│       │   └── [ 86M]  psam_p17.csv
│       ├── [ 128]  csv_pin/
│       │   └── [ 47M]  psam_p18.csv
│       ├── [ 128]  csv_pks/
│       │   └── [ 20M]  psam_p20.csv
│       ├── [ 128]  csv_pky/
│       │   └── [ 31M]  psam_p21.csv
│       ├── [ 128]  csv_pla/
│       │   └── [ 30M]  psam_p22.csv
│       ├── [ 128]  csv_pma/
│       │   └── [ 49M]  psam_p25.csv
│       ├── [ 128]  csv_pmd/
│       │   └── [ 42M]  psam_p24.csv
│       ├── [ 128]  csv_pme/
│       │   └── [9.7M]  psam_p23.csv
│       ├── [ 128]  csv_pmi/
│       │   └── [ 68M]  psam_p26.csv
│       ├── [ 128]  csv_pmn/
│       │   └── [ 39M]  psam_p27.csv
│       ├── [ 128]  csv_pmo/
│       │   └── [ 43M]  psam_p29.csv
│       ├── [ 128]  csv_pms/
│       │   └── [ 20M]  psam_p28.csv
│       ├── [ 128]  csv_pmt/
│       │   └── [7.4M]  psam_p30.csv
│       ├── [ 128]  csv_pnc/
│       │   └── [ 73M]  psam_p37.csv
│       ├── [ 128]  csv_pnd/
│       │   └── [5.4M]  psam_p38.csv
│       ├── [ 128]  csv_pne/
│       │   └── [ 13M]  psam_p31.csv
│       ├── [ 128]  csv_pnh/
│       │   └── [9.5M]  psam_p33.csv
│       ├── [ 128]  csv_pnj/
│       │   └── [ 63M]  psam_p34.csv
│       ├── [ 128]  csv_pnm/
│       │   └── [ 13M]  psam_p35.csv
│       ├── [ 128]  csv_pnv/
│       │   └── [ 21M]  psam_p32.csv
│       ├── [ 128]  csv_pny/
│       │   └── [136M]  psam_p36.csv
│       ├── [ 128]  csv_poh/
│       │   └── [ 81M]  psam_p39.csv
│       ├── [ 128]  csv_pok/
│       │   └── [ 26M]  psam_p40.csv
│       ├── [ 128]  csv_por/
│       │   └── [ 29M]  psam_p41.csv
│       ├── [ 128]  csv_ppa/
│       │   └── [ 88M]  psam_p42.csv
│       ├── [ 128]  csv_ppr/
│       │   └── [ 20M]  psam_p72.csv
│       ├── [ 128]  csv_pri/
│       │   └── [7.0M]  psam_p44.csv
│       ├── [ 128]  csv_psc/
│       │   └── [ 36M]  psam_p45.csv
│       ├── [ 128]  csv_psd/
│       │   └── [6.2M]  psam_p46.csv
│       ├── [ 128]  csv_ptn/
│       │   └── [ 48M]  psam_p47.csv
│       ├── [ 128]  csv_ptx/
│       │   └── [196M]  psam_p48.csv
│       ├── [ 160]  csv_pus/
│       │   ├── [1.1G]  psam_pusa.csv
│       │   └── [1.1G]  psam_pusb.csv
│       ├── [ 128]  csv_put/
│       │   └── [ 24M]  psam_p49.csv
│       ├── [ 128]  csv_pva/
│       │   └── [ 60M]  psam_p51.csv
│       ├── [ 128]  csv_pvt/
│       │   └── [4.6M]  psam_p50.csv
│       ├── [ 128]  csv_pwa/
│       │   └── [ 54M]  psam_p53.csv
│       ├── [ 128]  csv_pwi/
│       │   └── [ 41M]  psam_p55.csv
│       ├── [ 128]  csv_pwv/
│       │   └── [ 12M]  psam_p54.csv
│       └── [ 128]  csv_pwy/
│           └── [4.0M]  psam_p56.csv
├── [334K]  PUMS_Data_Dictionary_2022.json
├── [1.8K]  public_use_microdata_sample_csv_paths.parquet
├── [ 533]  public_use_microdata_sample_data_dictionary_path.parquet
└── [1.4K]  public_use_microdata_sample_urls.parquet

109 directories, 112 files
```

Next, 

You can change the URL to retrieve a different year (or 5-Year versus 1-Year sample) appropriately, or choose a different output path.

You can see the size of the csv output:

```
❯ du -sh ~/data/american_community_survey/2022
6.4G    /Users/me/data/american_community_survey/2022
```

And the compressed representation size:

```
du -hc ~/data/american_community_survey/*.parquet
...
3.0G    total
```

It takes ~ 30 seconds on a Macbook Pro with an M3 processor to download and extract 1 year's worth of public use microdata sample (PUMS) data from the ACS, and ~ 3 minutes to compress the CSV files into parquet files for exploratory data analysis and mapping.

## Variables available for individual-level microdata on people

The following variables are available in the individual-level census files for every (anonymized) person, alongside 79 variables for the `weight` of the person (for computing population-level weighted estimates):
```
Record Type
Housing unit/GQ person serial number
Division code based on 2010 Census definitions Division code based on 2020 Census definitions
Person number
Public use microdata area code (PUMA) based on 2020 Census definition (areas with population of 100,000 or more, use with ST for unique code)
Region code based on 2020 Census definitions
State Code based on 2020 Census definitions
Adjustment factor for income and earnings dollar amounts (6 implied decimal places)
Person's weight
Age
Citizenship status
Year of naturalization write-in
Class of worker
Self-care difficulty
Hearing difficulty
Vision difficulty
Independent living difficulty
Ambulatory difficulty
Veteran service-connected disability rating (percentage)
Veteran service-connected disability rating (checkbox)
Cognitive difficulty
Ability to speak English
Gave birth to child within the past 12 months
Grandparents living with grandchildren
Length of time responsible for grandchildren
Grandparents responsible for grandchildren
Subsidized Marketplace Coverage
Insurance through a current or former employer or union
Insurance purchased directly from an insurance company
Medicare, for people 65 and older, or people with certain disabilities
Medicaid, Medical Assistance, or any kind of government-assistance plan for those with low incomes or a disability
TRICARE or other military health care
VA (enrolled for VA health care)
Indian Health Service
Interest, dividends, and net rental income past 12 months (use ADJINC to adjust to constant dollars)
Travel time to work
Vehicle occupancy
Means of transportation to work
Language other than English spoken at home
Marital status
Divorced in the past 12 months
Married in the past 12 months
Number of times married
Widowed in the past 12 months
Year last married
Mobility status (lived here 1 year ago)
Military service
Served September 2001 or later
Served August 1990 - August 2001 (including Persian Gulf War)
Served May 1975 - July 1990
Served Vietnam era (August 1964 - April 1975)
Served February 1955 - July 1964
Served Korean War (July 1950 - January 1955)
Peacetime service before July 1950
Served World War II (December 1941 - December 1946)
Temporary absence from work (UNEDITED - See 'Employment Status Recode' (ESR))
Available for work (UNEDITED - See 'Employment Status Recode' (ESR))
On layoff from work (UNEDITED - See 'Employment Status Recode' (ESR))
Looking for work (UNEDITED - See 'Employment Status Recode' (ESR))
Informed of recall (UNEDITED - See 'Employment Status Recode' (ESR))
All other income past 12 months (use ADJINC to adjust to constant dollars)
Public assistance income past 12 months (use ADJINC to adjust to constant dollars)
Relationship
Retirement income past 12 months (use ADJINC to adjust to constant dollars)
School enrollment
Grade level attending
Educational attainment
Self-employment income past 12 months (use ADJINC to adjust SEMP to constant dollars)
Sex
Supplementary Security Income past 12 months (use ADJINC to adjust SSIP to constant dollars)
Social Security income past 12 months (use ADJINC to adjust SSP to constant dollars)
Wages or salary income past 12 months (use ADJINC to adjust WAGP to constant dollars)
Usual hours worked per week past 12 months
When last worked
Weeks worked during past 12 months
Worked last week
Year of entry
Ancestry recode
Recoded Detailed Ancestry - first entry
Recoded Detailed Ancestry - second entry
Decade of entry
Disability recode
Number of vehicles calculated from JWRI
Employment status of parents
Employment status recode
Recoded field of degree - first entry
Recoded field of degree - second entry
Health insurance coverage recode
Recoded detailed Hispanic origin
Industry recode for 2018 and later based on 2017 IND codes
Time of arrival at work - hour and minute
Time of departure for work - hour and minute
Language spoken at home
Migration PUMA based on 2020 Census definition
Migration recode - State or foreign country code
Married, spouse present/spouse absent
North American Industry Classification System (NAICS) recode for 2018 and later based on 2017 NAICS codes
Nativity
Nativity of parent
Own child
Occupation recode for 2018 and later based on 2018 OCC codes
Presence and age of own children
Total person's earnings (use ADJINC to adjust to constant dollars)
Total person's income (use ADJINC to adjust to constant dollars)
Place of birth (Recode)
Income-to-poverty ratio recode
Place of work PUMA based on 2020 Census definition
Place of work - State or foreign country recode
Private health insurance coverage recode
Public health coverage recode
Quarter of birth
Recoded detailed race code
Recoded detailed race code
Recoded detailed race code
American Indian and Alaska Native recode (American Indian and Alaska Native alone or in combination with one or more other races)
Asian recode (Asian alone or in combination with one or more other races)
Black or African American recode (Black alone or in combination with one or more other races)
Native Hawaiian recode (Native Hawaiian alone or in combination with one or more other races)
Number of major race groups represented
Other Pacific Islander recode (Other Pacific Islander alone or in combination with one or more other races)
Some other race recode (Some other race alone or in combination with one or more other races)
White recode (White alone or in combination with one or more other races)
Related child
Field of Degree Science and Engineering Flag - NSF Definition
Field of Degree Science and Engineering Related Flag - NSF Definition
Subfamily number
Subfamily relationship
Standard Occupational Classification (SOC) codes for 2018 and later based on 2018 SOC codes
Veteran period of service
World area of birth
Age allocation flag
Ancestry allocation flag
Citizenship allocation flag
Year of naturalization write-in allocation flag
Class of worker allocation flag
Self-care difficulty allocation flag
Hearing difficulty allocation flag
Vision difficulty allocation flag
Disability recode allocation flag
Independent living difficulty allocation flag
Ambulatory difficulty allocation flag
Disability rating percentage allocation flag
Disability rating checkbox allocation flag
Cognitive difficulty allocation flag
Ability to speak English allocation flag
Employment status recode allocation flag
Gave birth to child within the past 12 months allocation flag
Field of Degree allocation flag
Grandparents living with grandchildren allocation flag
Length of time responsible for grandchildren allocation flag
Grandparents responsible for grandchildren allocation flag
Health insurance coverage recode allocation flag
Subsidized Marketplace Coverage allocation flag
Insurance through a current or former employer or union allocation flag
Insurance purchased directly from an insurance company allocation flag
Medicare coverage given through the eligibility coverage edit
Medicare, for people 65 or older, or people with certain disabilities allocation flag
Medicaid coverage given through the eligibility coverage edit
Medicaid, medical assistance, or any kind of government-assistance plan for people with low incomes or a disability allocation flag
TRICARE coverage given through the eligibility coverage edit
TRICARE or other military health care allocation flag
VA (enrolled for VA health care) allocation flag
Indian health service allocation flag
Detailed Hispanic origin allocation flag
Industry allocation flag
Interest, dividend, and net rental income allocation flag
Time of departure to work allocation flag
Travel time to work allocation flag
Vehicle occupancy allocation flag
Means of transportation to work allocation flag
Language spoken at home allocation flag
Language other than English allocation flag
Marital status allocation flag
Divorced in the past 12 months allocation flag
Married in the past 12 months allocation flag
Times married allocation flag
Widowed in the past 12 months allocation flag
Year last married allocation flag
Mobility status allocation flag
Migration state and foreign country allocation flag
Military periods of service allocation flag
Military service allocation flag
Occupation allocation flag
All other income allocation flag
Public assistance income allocation flag
Total person's earnings allocation flag
Total person's income allocation flag
Place of birth allocation flag
Place of work state allocation flag
Private health insurance coverage recode allocation flag
Public health coverage recode allocation flag
Detailed race allocation flag
Relationship allocation flag
Retirement income allocation flag
Grade attending allocation flag
Highest education allocation flag
School enrollment allocation flag
Self-employment income allocation flag
Sex allocation flag
Supplementary Security Income allocation flag
Social Security income allocation flag
Wages and salary income allocation flag
Usual hours worked per week past 12 months allocation flag
Last worked allocation flag
Weeks worked past 12 months allocation flag
Worked last week allocation flag
Year of entry allocation flag
```

## Househould level variables available in the data

The following variables are available for every household in the data (alongside 79 weight replicates for computing population-level weighted estimates):

```
Record Type
Housing unit/GQ person serial number
Division code based on 2010 Census definitions Division code based on 2020 Census definitions
Public use microdata area code (PUMA) based on 2020 Census definition (areas with population of 100,000 or more, use with ST for unique code)
Region code based on 2020 Census definitions
State Code based on 2020 Census definitions
Adjustment factor for housing dollar amounts (6 implied decimal places)
Adjustment factor for income and earnings dollar amounts (6 implied decimal places)
Housing Unit Weight
Number of persons in this household
Type of unit
Access to the Internet
Lot size
Sales of Agriculture Products (yearly sales, no adjustment factor is applied)
Bathtub or shower
Number of bedrooms
Units in structure
Cellular data plan for a smartphone or other mobile device
Other computer equipment
Condominium fee (monthly amount, use ADJHSG to adjust CONP to constant dollars)
Dial-up service
Electricity cost flag variable
Electricity cost (monthly cost, use ADJHSG to adjust ELEP to constant dollars)
Yearly food stamp/Supplemental Nutrition Assistance Program (SNAP) recipiency
Fuel cost flag variable
Fuel cost (yearly cost for fuels other than gas and electricity, use ADJHSG to adjust FULP to constant dollars)
Gas cost flag variable
Gas cost (monthly cost, use ADJHSG to adjust GASP to constant dollars)
House heating fuel
Broadband (high speed) Internet service such as cable, fiber optic, or DSL service
Water heater (Puerto Rico only)
Fire/hazard/flood insurance (yearly amount, use ADJHSG to adjust INSP to constant dollars)
Laptop or desktop
Mobile home costs (yearly amount, use ADJHSG to adjust MHP to constant dollars)
First mortgage payment includes fire/hazard/flood insurance
First mortgage payment (monthly amount, use ADJHSG to adjust MRGP to constant dollars)
First mortgage payment includes real estate taxes
First mortgage status
Other Internet service
Refrigerator
Number of rooms
Meals included in rent
Monthly rent (use ADJHSG to adjust RNTP to constant dollars)
Hot and cold running water
Running water
Satellite Internet service
Sink with a faucet
Smartphone
Total payment on all second and junior mortgages and home equity loans (monthly amount, use ADJHSG to adjust SMP to constant dollars)
Stove or range
Tablet or other portable wireless computer
Telephone service
Tenure
Vacancy duration
Other vacancy status
Vacancy status
Property value
Vehicles (1 ton or less) available
Water cost flag variable
Water cost (yearly cost, use ADJHSG to adjust WATP to constant dollars)
When structure first built
Couple Type
Family income (past 12 months, use ADJINC to adjust FINCP to constant dollars)
Family presence and age of related children
Gross rent (monthly amount, use ADJHSG to adjust GRNTP to constant dollars)
Gross rent as a percentage of household income past 12 months
Household language
Detailed household language
Age of the householder
Recoded detailed Hispanic origin of the householder
Recoded detailed race code of the householder
Household/family type
Household/family type (includes cohabiting)
Household income (past 12 months, use ADJINC to adjust HINCP to constant dollars)
Household with grandparent living with grandchildren
HH presence and age of children
HH presence and age of own children
HH presence and age of related children
Complete kitchen facilities
Limited English speaking household
Multigenerational household
When moved into this house or apartment
Number of own children in household (unweighted)
Number of persons in family (unweighted)
Grandparent headed household with no parent present
Presence of nonrelative in household
Number of related children in household (unweighted)
Selected monthly owner costs as a percentage of household income during the past 12 months
Unmarried partner household
Complete plumbing facilities
Complete plumbing facilities for Puerto Rico
Presence of subfamilies in household
Presence of persons under 18 years in household (unweighted)
Presence of persons 60 years and over in household (unweighted)
Presence of persons 65 years and over in household (unweighted)
Response mode
Selected monthly owner costs (use ADJHSG to adjust SMOCP to constant dollars)
Second or junior mortgage or home equity loan status
Specified rental unit
Specified owner unit
Property taxes (yearly real estate taxes)
Workers in family during the past 12 months
Work experience of householder and spouse
Work status of householder or spouse in family households
Access to the Internet allocation flag
Lot size allocation flag
Sales of Agricultural Products allocation flag
Bathtub or shower allocation flag
Number of bedrooms allocation flag
Units in structure allocation flag
Cellular data plan for a smartphone or other mobile device allocation flag
Other computer equipment allocation flag
Condominium fee (monthly amount) allocation flag
Dial-up service allocation flag
Electricity cost (monthly cost) allocation flag
Family income (past 12 months) allocation flag
Yearly food stamp/Supplemental Nutrition Assistance Program (SNAP) recipiency allocation flag
Fuel cost (yearly cost for fuels other than gas and electricity) allocation flag
Gas cost (monthly cost) allocation flag
Gross rent (monthly amount) allocation flag
House heating fuel allocation flag
Household income (past 12 months) allocation flag
Broadband (high speed) Internet service such as cable, fiber optic, or DSL service allocation flag
Water heater allocation flag (Puerto Rico only)
Fire, hazard, flood insurance (yearly amount) allocation flag
Complete kitchen facilities allocation flag
Laptop or desktop allocation flag
Mobile home costs (yearly amount) allocation flag
First mortgage payment includes fire, hazard, flood insurance allocation flag
First mortgage payment (monthly amount) allocation flag
First mortgage payment includes real estate taxes allocation flag
First mortgage status allocation flag
When moved into this house or apartment allocation flag
Other Internet service allocation flag
Complete plumbing facilities allocation flag
Complete plumbing facilities allocation flag for Puerto Rico
Refrigerator allocation flag
Number of rooms allocation flag
Meals included in rent allocation flag
Monthly rent allocation flag
Hot and cold running water allocation flag
Running water allocation flag for Puerto Rico
Satellite Internet service allocation flag
Sink with a faucet allocation flag
Smartphone allocation flag
Selected monthly owner cost allocation flag
Total payment on second and junior mortgages and home equity loans (monthly amount) allocation flag
Home equity loan status allocation flag
Second mortgage status allocation flag
Stove or range allocation flag
Tablet or other portable wireless computer allocation flag
Property taxes (yearly amount) allocation flag
Telephone service allocation flag
Tenure allocation flag
Vacancy duration allocation flag
Other vacancy allocation flag
Vacancy status allocation flag
Property value allocation flag
Vehicles available allocation flag
Water cost (yearly cost) allocation flag
When structure first built allocation flag
```

## Requirements

Create virtual environment:
```
python3 -m venv .venv 
```

Install the requirements:
```
pip install -r requirements.txt
```

The `requirements.txt` file is generated by running:
```
pip-compile requirements.in
```


### Log for reproducing ChatGPT session

https://chat.openai.com/share/2018eb46-c896-4418-bc12-5c831a87bba6

## Contact

I'd love to hear what uses you have for this data! Reach me on [Twitter](https://twitter.com/thejaan) or [e-mail](mailto:jaan.li@jaan.li).
