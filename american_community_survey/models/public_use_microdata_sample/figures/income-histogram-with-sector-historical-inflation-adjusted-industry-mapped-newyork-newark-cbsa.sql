{{ config(materialized='external', location=var('output_path') + '/' + this.name + '.parquet') }}

WITH newyork_newark_pumas_2010 AS (
    SELECT '36' AS state_code, '02801' AS puma UNION ALL 
    SELECT '36' AS state_code, '02802' AS puma UNION ALL 
    SELECT '36' AS state_code, '02701' AS puma UNION ALL 
    SELECT '36' AS state_code, '02901' AS puma UNION ALL 
    SELECT '36' AS state_code, '03101' AS puma UNION ALL 
    SELECT '36' AS state_code, '02902' AS puma UNION ALL 
    SELECT '09' AS state_code, '00100' AS puma UNION ALL 
    SELECT '09' AS state_code, '01101' AS puma UNION ALL 
    SELECT '09' AS state_code, '00700' AS puma UNION ALL 
    SELECT '36' AS state_code, '02903' AS puma UNION ALL 
    SELECT '09' AS state_code, '00101' AS puma UNION ALL 
    SELECT '36' AS state_code, '03001' AS puma UNION ALL 
    SELECT '36' AS state_code, '03003' AS puma UNION ALL 
    SELECT '44' AS state_code, '00400' AS puma UNION ALL 
    SELECT '09' AS state_code, '00906' AS puma UNION ALL 
    SELECT '42' AS state_code, '00500' AS puma UNION ALL 
    SELECT '36' AS state_code, '03102' AS puma UNION ALL 
    SELECT '36' AS state_code, '03103' AS puma UNION ALL 
    SELECT '36' AS state_code, '03002' AS puma UNION ALL 
    SELECT '09' AS state_code, '00102' AS puma UNION ALL 
    SELECT '34' AS state_code, '00306' AS puma UNION ALL 
    SELECT '36' AS state_code, '03105' AS puma UNION ALL 
    SELECT '09' AS state_code, '00103' AS puma UNION ALL 
    SELECT '34' AS state_code, '00308' AS puma UNION ALL 
    SELECT '34' AS state_code, '00503' AS puma UNION ALL 
    SELECT '36' AS state_code, '03106' AS puma UNION ALL 
    SELECT '34' AS state_code, '01600' AS puma UNION ALL 
    SELECT '34' AS state_code, '00400' AS puma UNION ALL 
    SELECT '34' AS state_code, '00307' AS puma UNION ALL 
    SELECT '36' AS state_code, '03104' AS puma UNION ALL 
    SELECT '36' AS state_code, '03107' AS puma UNION ALL 
    SELECT '36' AS state_code, '03304' AS puma UNION ALL 
    SELECT '36' AS state_code, '03701' AS puma UNION ALL 
    SELECT '34' AS state_code, '00304' AS puma UNION ALL 
    SELECT '36' AS state_code, '03702' AS puma UNION ALL 
    SELECT '34' AS state_code, '00301' AS puma UNION ALL 
    SELECT '34' AS state_code, '00305' AS puma UNION ALL 
    SELECT '36' AS state_code, '03706' AS puma UNION ALL 
    SELECT '34' AS state_code, '00502' AS puma UNION ALL 
    SELECT '36' AS state_code, '03707' AS puma UNION ALL 
    SELECT '36' AS state_code, '03704' AS puma UNION ALL 
    SELECT '34' AS state_code, '01501' AS puma UNION ALL 
    SELECT '36' AS state_code, '03801' AS puma UNION ALL 
    SELECT '36' AS state_code, '03301' AS puma UNION ALL 
    SELECT '36' AS state_code, '03705' AS puma UNION ALL 
    SELECT '34' AS state_code, '00501' AS puma UNION ALL 
    SELECT '42' AS state_code, '00600' AS puma UNION ALL 
    SELECT '36' AS state_code, '03708' AS puma UNION ALL 
    SELECT '36' AS state_code, '03308' AS puma UNION ALL 
    SELECT '36' AS state_code, '03303' AS puma UNION ALL 
    SELECT '36' AS state_code, '03703' AS puma UNION ALL 
    SELECT '36' AS state_code, '03802' AS puma UNION ALL 
    SELECT '34' AS state_code, '00303' AS puma UNION ALL 
    SELECT '36' AS state_code, '03709' AS puma UNION ALL 
    SELECT '36' AS state_code, '03803' AS puma UNION ALL 
    SELECT '34' AS state_code, '01503' AS puma UNION ALL 
    SELECT '36' AS state_code, '03710' AS puma UNION ALL 
    SELECT '34' AS state_code, '01403' AS puma UNION ALL 
    SELECT '36' AS state_code, '03804' AS puma UNION ALL 
    SELECT '36' AS state_code, '03202' AS puma UNION ALL 
    SELECT '34' AS state_code, '01401' AS puma UNION ALL 
    SELECT '36' AS state_code, '03806' AS puma UNION ALL 
    SELECT '34' AS state_code, '00302' AS puma UNION ALL 
    SELECT '36' AS state_code, '03201' AS puma UNION ALL 
    SELECT '36' AS state_code, '03302' AS puma UNION ALL 
    SELECT '36' AS state_code, '04101' AS puma UNION ALL 
    SELECT '34' AS state_code, '00701' AS puma UNION ALL 
    SELECT '36' AS state_code, '03805' AS puma UNION ALL 
    SELECT '36' AS state_code, '04102' AS puma UNION ALL 
    SELECT '36' AS state_code, '03310' AS puma UNION ALL 
    SELECT '36' AS state_code, '04103' AS puma UNION ALL 
    SELECT '36' AS state_code, '03807' AS puma UNION ALL 
    SELECT '36' AS state_code, '03203' AS puma UNION ALL 
    SELECT '34' AS state_code, '00702' AS puma UNION ALL 
    SELECT '36' AS state_code, '03307' AS puma UNION ALL 
    SELECT '36' AS state_code, '03204' AS puma UNION ALL 
    SELECT '36' AS state_code, '04104' AS puma UNION ALL 
    SELECT '36' AS state_code, '03808' AS puma UNION ALL 
    SELECT '34' AS state_code, '01502' AS puma UNION ALL 
    SELECT '36' AS state_code, '03309' AS puma UNION ALL 
    SELECT '36' AS state_code, '04109' AS puma UNION ALL 
    SELECT '36' AS state_code, '04107' AS puma UNION ALL 
    SELECT '34' AS state_code, '01404' AS puma UNION ALL 
    SELECT '34' AS state_code, '00601' AS puma UNION ALL 
    SELECT '34' AS state_code, '01402' AS puma UNION ALL 
    SELECT '36' AS state_code, '04108' AS puma UNION ALL 
    SELECT '36' AS state_code, '03809' AS puma UNION ALL 
    SELECT '36' AS state_code, '04106' AS puma UNION ALL 
    SELECT '36' AS state_code, '04001' AS puma UNION ALL 
    SELECT '36' AS state_code, '03207' AS puma UNION ALL 
    SELECT '34' AS state_code, '01302' AS puma UNION ALL 
    SELECT '36' AS state_code, '03205' AS puma UNION ALL 
    SELECT '36' AS state_code, '04110' AS puma UNION ALL 
    SELECT '36' AS state_code, '03810' AS puma UNION ALL 
    SELECT '36' AS state_code, '04111' AS puma UNION ALL 
    SELECT '36' AS state_code, '04002' AS puma UNION ALL 
    SELECT '36' AS state_code, '04004' AS puma UNION ALL 
    SELECT '36' AS state_code, '04003' AS puma UNION ALL 
    SELECT '34' AS state_code, '01301' AS puma UNION ALL 
    SELECT '36' AS state_code, '04112' AS puma UNION ALL 
    SELECT '36' AS state_code, '04006' AS puma UNION ALL 
    SELECT '34' AS state_code, '00602' AS puma UNION ALL 
    SELECT '36' AS state_code, '04007' AS puma UNION ALL 
    SELECT '36' AS state_code, '03313' AS puma UNION ALL 
    SELECT '36' AS state_code, '04011' AS puma UNION ALL 
    SELECT '34' AS state_code, '01901' AS puma UNION ALL 
    SELECT '34' AS state_code, '01504' AS puma UNION ALL 
    SELECT '36' AS state_code, '04005' AS puma UNION ALL 
    SELECT '36' AS state_code, '03211' AS puma UNION ALL 
    SELECT '36' AS state_code, '04113' AS puma UNION ALL 
    SELECT '34' AS state_code, '00703' AS puma UNION ALL 
    SELECT '34' AS state_code, '01902' AS puma UNION ALL 
    SELECT '36' AS state_code, '03306' AS puma UNION ALL 
    SELECT '36' AS state_code, '04008' AS puma UNION ALL 
    SELECT '34' AS state_code, '01800' AS puma UNION ALL 
    SELECT '36' AS state_code, '04010' AS puma UNION ALL 
    SELECT '36' AS state_code, '04012' AS puma UNION ALL 
    SELECT '36' AS state_code, '03209' AS puma UNION ALL 
    SELECT '36' AS state_code, '03206' AS puma UNION ALL 
    SELECT '36' AS state_code, '04105' AS puma UNION ALL 
    SELECT '36' AS state_code, '03311' AS puma UNION ALL 
    SELECT '36' AS state_code, '04015' AS puma UNION ALL 
    SELECT '36' AS state_code, '04014' AS puma UNION ALL 
    SELECT '36' AS state_code, '03903' AS puma UNION ALL 
    SELECT '36' AS state_code, '03312' AS puma UNION ALL 
    SELECT '36' AS state_code, '04013' AS puma UNION ALL 
    SELECT '34' AS state_code, '01903' AS puma UNION ALL 
    SELECT '34' AS state_code, '01904' AS puma UNION ALL 
    SELECT '34' AS state_code, '01700' AS puma UNION ALL 
    SELECT '36' AS state_code, '04017' AS puma UNION ALL 
    SELECT '36' AS state_code, '03212' AS puma UNION ALL 
    SELECT '36' AS state_code, '03210' AS puma UNION ALL 
    SELECT '36' AS state_code, '04016' AS puma UNION ALL 
    SELECT '36' AS state_code, '04009' AS puma UNION ALL 
    SELECT '36' AS state_code, '03902' AS puma UNION ALL 
    SELECT '36' AS state_code, '04018' AS puma UNION ALL 
    SELECT '34' AS state_code, '00905' AS puma UNION ALL 
    SELECT '36' AS state_code, '03305' AS puma UNION ALL 
    SELECT '34' AS state_code, '01003' AS puma UNION ALL 
    SELECT '36' AS state_code, '03208' AS puma UNION ALL 
    SELECT '34' AS state_code, '00903' AS puma UNION ALL 
    SELECT '36' AS state_code, '04114' AS puma UNION ALL 
    SELECT '36' AS state_code, '03901' AS puma UNION ALL 
    SELECT '34' AS state_code, '00904' AS puma UNION ALL 
    SELECT '34' AS state_code, '01001' AS puma UNION ALL 
    SELECT '34' AS state_code, '00907' AS puma UNION ALL 
    SELECT '34' AS state_code, '00906' AS puma UNION ALL 
    SELECT '34' AS state_code, '01002' AS puma UNION ALL 
    SELECT '34' AS state_code, '00800' AS puma UNION ALL 
    SELECT '34' AS state_code, '01105' AS puma UNION ALL 
    SELECT '34' AS state_code, '00902' AS puma UNION ALL 
    SELECT '34' AS state_code, '01104' AS puma UNION ALL 
    SELECT '42' AS state_code, '03001' AS puma UNION ALL 
    SELECT '34' AS state_code, '00901' AS puma UNION ALL 
    SELECT '34' AS state_code, '02302' AS puma UNION ALL 
    SELECT '34' AS state_code, '01103' AS puma UNION ALL 
    SELECT '42' AS state_code, '03002' AS puma UNION ALL 
    SELECT '34' AS state_code, '02303' AS puma UNION ALL 
    SELECT '34' AS state_code, '01106' AS puma UNION ALL 
    SELECT '34' AS state_code, '01101' AS puma UNION ALL 
    SELECT '34' AS state_code, '01102' AS puma UNION ALL 
    SELECT '34' AS state_code, '01203' AS puma UNION ALL 
    SELECT '34' AS state_code, '01205' AS puma UNION ALL 
    SELECT '34' AS state_code, '01204' AS puma UNION ALL 
    SELECT '34' AS state_code, '01202' AS puma UNION ALL 
    SELECT '34' AS state_code, '02003' AS puma UNION ALL 
    SELECT '34' AS state_code, '01201' AS puma UNION ALL 
    SELECT '34' AS state_code, '00101' AS puma
),
newyork_newark_pumas_2020 AS (
    SELECT '36' AS state_code, '02804' AS puma UNION ALL 
    SELECT '36' AS state_code, '02701' AS puma UNION ALL  
    SELECT '36' AS state_code, '02901' AS puma UNION ALL  
    SELECT '36' AS state_code, '02805' AS puma UNION ALL  
    SELECT '09' AS state_code, '20904' AS puma UNION ALL  
    SELECT '36' AS state_code, '02902' AS puma UNION ALL  
    SELECT '09' AS state_code, '20401' AS puma UNION ALL  
    SELECT '09' AS state_code, '20500' AS puma UNION ALL  
    SELECT '36' AS state_code, '02903' AS puma UNION ALL  
    SELECT '36' AS state_code, '03001' AS puma UNION ALL  
    SELECT '36' AS state_code, '03003' AS puma UNION ALL  
    SELECT '44' AS state_code, '00400' AS puma UNION ALL  
    SELECT '09' AS state_code, '20604' AS puma UNION ALL  
    SELECT '42' AS state_code, '00500' AS puma UNION ALL  
    SELECT '36' AS state_code, '03102' AS puma UNION ALL  
    SELECT '36' AS state_code, '03103' AS puma UNION ALL  
    SELECT '09' AS state_code, '20902' AS puma UNION ALL  
    SELECT '36' AS state_code, '03002' AS puma UNION ALL  
    SELECT '09' AS state_code, '20901' AS puma UNION ALL  
    SELECT '34' AS state_code, '00306' AS puma UNION ALL  
    SELECT '36' AS state_code, '03111' AS puma UNION ALL  
    SELECT '09' AS state_code, '20903' AS puma UNION ALL  
    SELECT '34' AS state_code, '00308' AS puma UNION ALL  
    SELECT '34' AS state_code, '00504' AS puma UNION ALL  
    SELECT '36' AS state_code, '03112' AS puma UNION ALL  
    SELECT '34' AS state_code, '01600' AS puma UNION ALL  
    SELECT '36' AS state_code, '03110' AS puma UNION ALL  
    SELECT '34' AS state_code, '00503' AS puma UNION ALL  
    SELECT '34' AS state_code, '00307' AS puma UNION ALL  
    SELECT '36' AS state_code, '03113' AS puma UNION ALL  
    SELECT '36' AS state_code, '03114' AS puma UNION ALL  
    SELECT '36' AS state_code, '03304' AS puma UNION ALL  
    SELECT '36' AS state_code, '04208' AS puma UNION ALL  
    SELECT '36' AS state_code, '04212' AS puma UNION ALL  
    SELECT '34' AS state_code, '00304' AS puma UNION ALL  
    SELECT '34' AS state_code, '00305' AS puma UNION ALL  
    SELECT '36' AS state_code, '04207' AS puma UNION ALL  
    SELECT '34' AS state_code, '00502' AS puma UNION ALL  
    SELECT '36' AS state_code, '04205' AS puma UNION ALL  
    SELECT '36' AS state_code, '04211' AS puma UNION ALL  
    SELECT '34' AS state_code, '00301' AS puma UNION ALL  
    SELECT '34' AS state_code, '01501' AS puma UNION ALL  
    SELECT '36' AS state_code, '04112' AS puma UNION ALL  
    SELECT '36' AS state_code, '03301' AS puma UNION ALL  
    SELECT '36' AS state_code, '04263' AS puma UNION ALL  
    SELECT '34' AS state_code, '00501' AS puma UNION ALL  
    SELECT '42' AS state_code, '00600' AS puma UNION ALL  
    SELECT '36' AS state_code, '04204' AS puma UNION ALL  
    SELECT '36' AS state_code, '03308' AS puma UNION ALL  
    SELECT '36' AS state_code, '03303' AS puma UNION ALL  
    SELECT '36' AS state_code, '04109' AS puma UNION ALL  
    SELECT '36' AS state_code, '04210' AS puma UNION ALL  
    SELECT '36' AS state_code, '04209' AS puma UNION ALL  
    SELECT '34' AS state_code, '00303' AS puma UNION ALL  
    SELECT '36' AS state_code, '04110' AS puma UNION ALL  
    SELECT '34' AS state_code, '01503' AS puma UNION ALL  
    SELECT '34' AS state_code, '01403' AS puma UNION ALL  
    SELECT '36' AS state_code, '04221' AS puma UNION ALL  
    SELECT '36' AS state_code, '04111' AS puma UNION ALL  
    SELECT '36' AS state_code, '03202' AS puma UNION ALL  
    SELECT '34' AS state_code, '01401' AS puma UNION ALL  
    SELECT '36' AS state_code, '04107' AS puma UNION ALL  
    SELECT '34' AS state_code, '00302' AS puma UNION ALL  
    SELECT '36' AS state_code, '03201' AS puma UNION ALL  
    SELECT '36' AS state_code, '03302' AS puma UNION ALL  
    SELECT '34' AS state_code, '00604' AS puma UNION ALL  
    SELECT '36' AS state_code, '04401' AS puma UNION ALL  
    SELECT '36' AS state_code, '04108' AS puma UNION ALL  
    SELECT '36' AS state_code, '04403' AS puma UNION ALL  
    SELECT '34' AS state_code, '01405' AS puma UNION ALL  
    SELECT '36' AS state_code, '03310' AS puma UNION ALL  
    SELECT '36' AS state_code, '04104' AS puma UNION ALL  
    SELECT '36' AS state_code, '04407' AS puma UNION ALL  
    SELECT '36' AS state_code, '03203' AS puma UNION ALL  
    SELECT '34' AS state_code, '00603' AS puma UNION ALL  
    SELECT '36' AS state_code, '03307' AS puma UNION ALL  
    SELECT '36' AS state_code, '03204' AS puma UNION ALL  
    SELECT '36' AS state_code, '04411' AS puma UNION ALL  
    SELECT '36' AS state_code, '04402' AS puma UNION ALL  
    SELECT '36' AS state_code, '04165' AS puma UNION ALL  
    SELECT '34' AS state_code, '01502' AS puma UNION ALL  
    SELECT '36' AS state_code, '03309' AS puma UNION ALL  
    SELECT '36' AS state_code, '04404' AS puma UNION ALL  
    SELECT '34' AS state_code, '01404' AS puma UNION ALL  
    SELECT '34' AS state_code, '00601' AS puma UNION ALL  
    SELECT '34' AS state_code, '01402' AS puma UNION ALL  
    SELECT '36' AS state_code, '04406' AS puma UNION ALL  
    SELECT '36' AS state_code, '04103' AS puma UNION ALL  
    SELECT '36' AS state_code, '04408' AS puma UNION ALL  
    SELECT '36' AS state_code, '04301' AS puma UNION ALL  
    SELECT '36' AS state_code, '03207' AS puma UNION ALL  
    SELECT '34' AS state_code, '01407' AS puma UNION ALL  
    SELECT '36' AS state_code, '03205' AS puma UNION ALL  
    SELECT '36' AS state_code, '04405' AS puma UNION ALL  
    SELECT '36' AS state_code, '04302' AS puma UNION ALL  
    SELECT '36' AS state_code, '04121' AS puma UNION ALL  
    SELECT '36' AS state_code, '04409' AS puma UNION ALL  
    SELECT '36' AS state_code, '04304' AS puma UNION ALL  
    SELECT '36' AS state_code, '04303' AS puma UNION ALL  
    SELECT '34' AS state_code, '01406' AS puma UNION ALL  
    SELECT '36' AS state_code, '04412' AS puma UNION ALL  
    SELECT '36' AS state_code, '04308' AS puma UNION ALL  
    SELECT '34' AS state_code, '00602' AS puma UNION ALL  
    SELECT '34' AS state_code, '01901' AS puma UNION ALL  
    SELECT '36' AS state_code, '04309' AS puma UNION ALL  
    SELECT '36' AS state_code, '04316' AS puma UNION ALL  
    SELECT '36' AS state_code, '03313' AS puma UNION ALL  
    SELECT '34' AS state_code, '01504' AS puma UNION ALL  
    SELECT '36' AS state_code, '04306' AS puma UNION ALL  
    SELECT '36' AS state_code, '03211' AS puma UNION ALL  
    SELECT '36' AS state_code, '04410' AS puma UNION ALL  
    SELECT '34' AS state_code, '00605' AS puma UNION ALL  
    SELECT '36' AS state_code, '04305' AS puma UNION ALL  
    SELECT '36' AS state_code, '03306' AS puma UNION ALL  
    SELECT '36' AS state_code, '04413' AS puma UNION ALL  
    SELECT '34' AS state_code, '01902' AS puma UNION ALL  
    SELECT '34' AS state_code, '01905' AS puma UNION ALL  
    SELECT '36' AS state_code, '04307' AS puma UNION ALL  
    SELECT '36' AS state_code, '04317' AS puma UNION ALL  
    SELECT '36' AS state_code, '03209' AS puma UNION ALL  
    SELECT '36' AS state_code, '03206' AS puma UNION ALL  
    SELECT '36' AS state_code, '03311' AS puma UNION ALL  
    SELECT '36' AS state_code, '04314' AS puma UNION ALL  
    SELECT '36' AS state_code, '04312' AS puma UNION ALL  
    SELECT '36' AS state_code, '04501' AS puma UNION ALL  
    SELECT '36' AS state_code, '03312' AS puma UNION ALL  
    SELECT '36' AS state_code, '04310' AS puma UNION ALL  
    SELECT '34' AS state_code, '01903' AS puma UNION ALL  
    SELECT '34' AS state_code, '01904' AS puma UNION ALL  
    SELECT '34' AS state_code, '01700' AS puma UNION ALL  
    SELECT '36' AS state_code, '04311' AS puma UNION ALL  
    SELECT '36' AS state_code, '03212' AS puma UNION ALL  
    SELECT '36' AS state_code, '03210' AS puma UNION ALL  
    SELECT '36' AS state_code, '04315' AS puma UNION ALL  
    SELECT '36' AS state_code, '04318' AS puma UNION ALL  
    SELECT '36' AS state_code, '04313' AS puma UNION ALL  
    SELECT '34' AS state_code, '00905' AS puma UNION ALL  
    SELECT '36' AS state_code, '03305' AS puma UNION ALL  
    SELECT '34' AS state_code, '01003' AS puma UNION ALL  
    SELECT '36' AS state_code, '03208' AS puma UNION ALL  
    SELECT '34' AS state_code, '00903' AS puma UNION ALL  
    SELECT '36' AS state_code, '04503' AS puma UNION ALL  
    SELECT '36' AS state_code, '04414' AS puma UNION ALL  
    SELECT '36' AS state_code, '04502' AS puma UNION ALL  
    SELECT '34' AS state_code, '00904' AS puma UNION ALL  
    SELECT '34' AS state_code, '01001' AS puma UNION ALL  
    SELECT '34' AS state_code, '00907' AS puma UNION ALL  
    SELECT '34' AS state_code, '00906' AS puma UNION ALL  
    SELECT '34' AS state_code, '01002' AS puma UNION ALL  
    SELECT '34' AS state_code, '00800' AS puma UNION ALL  
    SELECT '34' AS state_code, '01105' AS puma UNION ALL  
    SELECT '34' AS state_code, '01104' AS puma UNION ALL  
    SELECT '42' AS state_code, '03011' AS puma UNION ALL  
    SELECT '34' AS state_code, '00902' AS puma UNION ALL  
    SELECT '34' AS state_code, '00901' AS puma UNION ALL  
    SELECT '34' AS state_code, '02302' AS puma UNION ALL  
    SELECT '34' AS state_code, '01103' AS puma UNION ALL  
    SELECT '42' AS state_code, '03012' AS puma UNION ALL  
    SELECT '34' AS state_code, '02303' AS puma UNION ALL  
    SELECT '34' AS state_code, '01106' AS puma UNION ALL  
    SELECT '34' AS state_code, '01101' AS puma UNION ALL  
    SELECT '34' AS state_code, '01102' AS puma UNION ALL  
    SELECT '34' AS state_code, '01203' AS puma UNION ALL  
    SELECT '34' AS state_code, '01205' AS puma UNION ALL  
    SELECT '34' AS state_code, '01204' AS puma UNION ALL  
    SELECT '34' AS state_code, '01202' AS puma UNION ALL  
    SELECT '34' AS state_code, '02003' AS puma UNION ALL  
    SELECT '34' AS state_code, '01201' AS puma UNION ALL  
    SELECT '34' AS state_code, '00101' AS puma
),
cpi_adjustment AS (
    SELECT
        year,
        consumer_price_index
    FROM {{ ref('consumer_price_index') }}
    WHERE year >= 2010
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
        hi.state_code,
        hi.puma,
        hi.year,
        hi.industry_code,
        hi.wage * iaf.adjustment_factor_to_2022 AS adjusted_income_to_2022
    FROM {{ ref('income-histogram-with-sector-historical') }} hi
    JOIN inflation_adjustment_factors iaf ON hi.year = iaf.year
    LEFT JOIN newyork_newark_pumas_2010 nnp2010 ON hi.state_code = nnp2010.state_code AND hi.puma = nnp2010.puma
    LEFT JOIN newyork_newark_pumas_2020 nnp2020 ON hi.state_code = nnp2020.state_code AND hi.puma = nnp2020.puma
    WHERE
        hi.wage IS NOT NULL AND (
            (hi.year BETWEEN 2010 AND 2019 AND nnp2010.puma IS NOT NULL) OR
            (hi.year >= 2020 AND nnp2020.puma IS NOT NULL)
        )
),
income_histogram AS (
    SELECT
        year,
        state_code,
        puma,
        industry_code,
        adjusted_income_to_2022,
        COUNT(*) AS count
    FROM preliminary_adjusted_income
    GROUP BY year, state_code, puma, industry_code, adjusted_income_to_2022
),
final_output AS (
    SELECT
        ih.year,
        ih.state_code,
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
        fo.state_code,
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
    state_code,
    puma,
    sector,
    adjusted_income_to_2022 AS income,
    SUM(count) AS count
FROM sector_transformation
GROUP BY year, state_code, puma, sector, income
ORDER BY year, state_code, puma, income DESC, sector
