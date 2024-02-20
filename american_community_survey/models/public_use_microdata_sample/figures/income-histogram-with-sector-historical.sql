{{ config(materialized='external', location=var('output_path') + '/' + this.name + '.parquet') }}

WITH raw_data AS (
    SELECT
        CAST("WAGP" AS FLOAT) AS wage,
        CAST("ADJINC" AS FLOAT) AS adjustment_factor,
        "INDP" AS industry_code,
        CAST("ADJUST" AS FLOAT) AS pre_2007_adjustment_factor,
        CAST(SUBSTRING(SPLIT_PART(filename, '/', 6), 1, 4) AS INT) AS year,
        filename
    FROM read_csv_auto('~/data/american_community_survey/*/**/*pus*.csv', filename=true, union_by_name=true)
    WHERE
        "WAGP" IS NOT NULL AND 
        -- "ADJINC" IS NOT NULL AND 
        "INDP" IS NOT NULL
)
SELECT
    wage,
    adjustment_factor,
    pre_2007_adjustment_factor,
    industry_code,
    year
FROM raw_data
ORDER BY year, wage, industry_code, adjustment_factor, pre_2007_adjustment_factor
