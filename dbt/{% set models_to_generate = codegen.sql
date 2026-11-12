-- depends_on: {{ ref('stg_green_tripdata') }}
-- depends_on: {{ ref('stg_yellow_tripdata') }}
-- depends_on: {{ ref('taxi_zone_lookup') }}
-- depends_on: {{ ref('dim_zones') }}
-- depends_on: {{ ref('fact_trips') }}
-- depends_on: {{ ref('fct_monthly_zone_reveue') }}
{% set models_to_generate = codegen.get_models(directory='core') %}
{{ codegen.generate_model_yaml(
    model_names = models_to_generate
) }}