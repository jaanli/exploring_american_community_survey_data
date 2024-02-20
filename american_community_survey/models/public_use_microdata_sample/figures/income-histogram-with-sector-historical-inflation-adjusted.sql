{{ config(materialized='external', location=var('output_path') + '/' + this.name + '.parquet') }}

WITH adjusted_income AS (
    SELECT
        CAST(wage AS FLOAT) * (CAST(adjustment_factor AS FLOAT) / 1000000) AS adjusted_income,
        industry_code,
        year
    FROM {{ ref('income-histogram-with-sector-historical') }}
    WHERE
        wage IS NOT NULL AND 
        adjustment_factor IS NOT NULL AND
        industry_code IS NOT NULL
),
income_histogram AS (
    SELECT
        year,
        adjusted_income,
        industry_code,
        COUNT(*) AS count
    FROM adjusted_income
    GROUP BY year, adjusted_income, industry_code
)
SELECT * FROM income_histogram
ORDER BY year, adjusted_income, industry_code
