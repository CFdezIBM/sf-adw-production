{{ config(
    alias='fct_product_cost_history',
    materialized='incremental',
    unique_key=['product_id', 'start_date'],
    incremental_strategy='merge'
) }}

select
    -- keys and grain -------------------------------------------------------
    {{ fact_foreign_key('product_id') }} as product_key,
    product_id,

    -- dates ------------------------------------------------------------------
    start_date,
    end_date,

    -- measures ---------------------------------------------------------------
    standard_cost,

    -- audit ------------------------------------------------------------------
    modified_date

from {{ ref('slv_adventure_works_production__product_cost_history') }}

{% if is_incremental() %}
where modified_date >= (select max(modified_date) from {{ this }})
{% endif %}
