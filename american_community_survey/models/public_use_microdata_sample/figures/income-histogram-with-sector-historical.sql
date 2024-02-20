{{ config(materialized='external', location=var('output_path') + '/' + this.name + '.parquet') }}

WITH raw_data AS (
    SELECT
        CAST("WAGP" AS INT) AS wage,
        CAST("ADJINC" AS INT) AS adjustment_factor,
        CAST("INDP" AS INT) AS industry_code,
        SUBSTRING(SPLIT_PART(filename, '/', 6), 1, 4) AS year,
        filename
    FROM read_csv_auto('~/data/american_community_survey/*/**/*pus*.csv', filename=true, union_by_name=true)
    WHERE
        "WAGP" IS NOT NULL AND 
        "ADJINC" IS NOT NULL AND 
        "INDP" IS NOT NULL
)
SELECT
    wage,
    adjustment_factor,
    industry_code,
    year
FROM raw_data
ORDER BY year, wage, adjustment_factor, industry_code
