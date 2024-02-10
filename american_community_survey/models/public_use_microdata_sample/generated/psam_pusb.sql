{{ config(materialized='external', location=var('output_path') + '/' + this.name + '.parquet') }}
SELECT * FROM '/Users/me/data/american_community_survey/2022/1-Year/csv_pus/psam_pusb.csv'
