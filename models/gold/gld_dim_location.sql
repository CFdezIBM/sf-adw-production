{{ config(
    alias='dim_location',
    materialized='incremental',
    unique_key='location_id',
    incremental_strategy='merge',
    post_hook="{{ upsert_default_rows('location_id') }}"
) }}

select
    {{ dbt_utils.generate_surrogate_key(['location_id']) }} as location_key,
    location_id,
    name as location_name,
    cost_rate,
    availability,
    modified_date as location_modified_date

from {{ ref('slv_adventure_works_production__location') }}
