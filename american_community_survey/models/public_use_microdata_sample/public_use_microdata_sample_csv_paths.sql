{{ config(materialized='external', location=var('output_path') + '/' + this.name + '.parquet') }}
SELECT * FROM {{ ref('extract_public_use_microdata_sample_archives') }}
