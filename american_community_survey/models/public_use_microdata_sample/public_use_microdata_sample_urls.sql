{{ config(materialized='external', location=var('output_path') + '/' + this.name + '.parquet') }}
SELECT * FROM {{ ref('list_public_use_microdata_sample_urls') }}
