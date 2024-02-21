{% macro generate_industry_mapping_before_2003_sql(input_field, output_alias) %}
CASE {{ input_field }}
    {% set industry_mappings = get_industry_mappings_before_2003() %}
    {% for code, description in industry_mappings.items() %}
    WHEN '{{ code }}' THEN '{{ description }}'
    {% endfor %}
END::ENUM ({% for description in industry_mappings.values() | unique %}'{{ description }}'{{ "," if not loop.last }}{% endfor %}) AS {{ output_alias }}
{% endmacro %}
