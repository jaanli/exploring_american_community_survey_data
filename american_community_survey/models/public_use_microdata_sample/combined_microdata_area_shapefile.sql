{{ config(materialized='external', location=var('output_path') + '/' + this.name + '.shp') }}
WITH combined_shp AS (
    {{ generate_shp_load_sql() }}
)
SELECT * FROM combined_shp