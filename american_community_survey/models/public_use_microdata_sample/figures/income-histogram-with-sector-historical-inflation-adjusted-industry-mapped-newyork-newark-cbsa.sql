{{ config(materialized='external', location=var('output_path') + '/' + this.name + '.parquet') }}

WITH cpi_adjustment AS (
    SELECT
        year,
        consumer_price_index
    FROM {{ ref('consumer_price_index') }}
    WHERE year <= 2022
),
latest_cpi AS (
    SELECT
        MAX(consumer_price_index) AS cpi_2022
    FROM cpi_adjustment
    WHERE year = 2022
),
inflation_adjustment_factors AS (
    SELECT
        ca.year,
        ca.consumer_price_index,
        (lc.cpi_2022 / ca.consumer_price_index) AS adjustment_factor_to_2022
    FROM cpi_adjustment ca
    CROSS JOIN latest_cpi lc
),
preliminary_adjusted_income AS (
    SELECT
        hi.puma,
        hi.year,
        hi.industry_code,
        hi.wage * iaf.adjustment_factor_to_2022 AS adjusted_income_to_2022
    FROM {{ ref('income-histogram-with-sector-historical') }} hi
    JOIN inflation_adjustment_factors iaf ON hi.year = iaf.year
    WHERE
        hi.wage IS NOT NULL
        -- select PUMAs in New York-Newark-Jersey City, NY-NJ-PA Core-based Statistical Area (CBSA)
        AND hi.puma IN ('02804', '02701', '02901', '02805', '20904', '02902', '20401', '20500', '02903', '03001', '03003', '00400', '20604', '00500', '03102', '03103', '20902', '03002', '20901', '00306', '03111', '20903', '00308', '00504', '03112', '01600', '03110', '00503', '00307', '03113', '03114', '03304', '04208', '04212', '00304', '00305', '04207', '00502', '04205', '04211', '00301', '01501', '04112', '03301', '04263', '00501', '00600', '04204', '03308', '03303', '04109', '04210', '04209', '00303', '04110', '01503', '01403', '04221', '04111', '03202', '01401', '04107', '00302', '03201', '03302', '00604', '04401', '04108', '04403', '01405', '03310', '04104', '04407', '03203', '00603', '03307', '03204', '04411', '04402', '04165', '01502', '03309', '04404', '01404', '00601', '01402', '04406', '04103', '04408', '04301', '03207', '01407', '03205', '04405', '04302', '04121', '04409', '04304', '04303', '01406', '04412', '04308', '00602', '01901', '04309', '04316', '03313', '01504', '04306', '03211', '04410', '00605', '04305', '03306', '04413', '01902', '01905', '04307', '04317', '03209', '03206', '03311', '04314', '04312', '04501', '03312', '04310', '01903', '01904', '01700', '04311', '03212', '03210', '04315', '04318', '04313', '00905', '03305', '01003', '03208', '00903', '04503', '04414', '04502', '00904', '01001', '00907', '00906', '01002', '00800', '01105', '01104', '03011', '00902', '00901', '02302', '01103', '03012', '02303', '01106', '01101', '01102', '01203', '01205', '01204', '01202', '02003', '01201', '00101')
),
income_histogram AS (
    SELECT
        year,
        puma,
        industry_code,
        adjusted_income_to_2022,
        COUNT(*) AS count
    FROM preliminary_adjusted_income
    GROUP BY year, puma, industry_code, adjusted_income_to_2022
),
final_output AS (
    SELECT
        ih.year,
        ih.puma,
        ih.adjusted_income_to_2022,
        ih.count,
        CASE
            WHEN ih.year < 2003 THEN
                {{ generate_industry_mapping_before_2003_sql('ih.industry_code') }}
            ELSE
                {{ generate_industry_mapping_2003_onwards_sql('ih.industry_code') }}
        END AS industry_mapped
    FROM income_histogram ih
),
sector_transformation AS (
    SELECT
        fo.year,
        fo.puma,
        fo.adjusted_income_to_2022,
        fo.count,
        fo.industry_mapped,
        CASE
            WHEN LOWER(SUBSTRING(fo.industry_mapped, 1, 3)) = 'agr' THEN 'Agriculture, Forestry, Fishing and Hunting'
            WHEN LOWER(SUBSTRING(fo.industry_mapped, 1, 3)) = 'ext' THEN 'Mining, Quarrying, and Oil and Gas Extraction'
            WHEN LOWER(SUBSTRING(fo.industry_mapped, 1, 3)) = 'utl' THEN 'Utilities'
            WHEN LOWER(SUBSTRING(fo.industry_mapped, 1, 3)) = 'con' THEN 'Construction'
            WHEN LOWER(SUBSTRING(fo.industry_mapped, 1, 3)) = 'whl' THEN 'Wholesale Trade'
            WHEN LOWER(SUBSTRING(fo.industry_mapped, 1, 3)) = 'inf' THEN 'Information'
            WHEN LOWER(SUBSTRING(fo.industry_mapped, 1, 3)) = 'fin' THEN 'Finance and Insurance'
            WHEN LOWER(SUBSTRING(fo.industry_mapped, 1, 3)) = 'ret' THEN 'Retail Trade'
            WHEN LOWER(SUBSTRING(fo.industry_mapped, 1, 3)) = 'prf' THEN 'Professional, Scientific, and Technical Services'
            WHEN LOWER(SUBSTRING(fo.industry_mapped, 1, 3)) = 'srv' THEN 'Management of Companies and Enterprises'
            WHEN LOWER(SUBSTRING(fo.industry_mapped, 1, 3)) = 'adm' THEN 'Administrative and Support and Waste Management and Remediation Services'
            WHEN LOWER(SUBSTRING(fo.industry_mapped, 1, 3)) = 'edu' THEN 'Educational Services'
            WHEN LOWER(SUBSTRING(fo.industry_mapped, 1, 3)) = 'med' THEN 'Health Care and Social Assistance'
            WHEN LOWER(SUBSTRING(fo.industry_mapped, 1, 3)) = 'ent' THEN 'Arts, Entertainment, and Recreation'
            WHEN LOWER(SUBSTRING(fo.industry_mapped, 1, 3)) = 'mfg' THEN 'Manufacturing'
            WHEN LOWER(SUBSTRING(fo.industry_mapped, 1, 3)) = 'trn' THEN 'Transportation and Warehousing'
            WHEN LOWER(SUBSTRING(fo.industry_mapped, 1, 3)) = 'sca' THEN 'Services'
            WHEN LOWER(SUBSTRING(fo.industry_mapped, 1, 3)) = 'mil' THEN 'Public Administration'
            WHEN LOWER(SUBSTRING(fo.industry_mapped, 1, 3)) = 'une' THEN 'Unemployed, With No Work Experience In The Last 5 Years Or Earlier Or Never Worked'
        END AS sector
    FROM final_output fo
)
SELECT
    year,
    puma,
    sector,
    adjusted_income_to_2022 AS income,
    SUM(count) AS count
FROM sector_transformation
GROUP BY year, puma, sector, income
ORDER BY year, puma, income DESC, sector
