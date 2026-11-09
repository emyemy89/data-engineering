{% macro get_trip_duration_minutes(pickup_datetime, dropoff_datetime) %}
    {{ dbt.datediff(
        "lpep_pickup_datetime",
        "lpep_dropoff_datetime",
        "minute"
    ) }}
{% endmacro %}