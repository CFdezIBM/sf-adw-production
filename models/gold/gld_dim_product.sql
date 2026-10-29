{{ config(
    alias='dim_product',
    materialized='incremental',
    unique_key='product_id',
    incremental_strategy='merge',
    post_hook="{{ upsert_default_rows('product_id') }}"
) }}

select
    {{ dbt_utils.generate_surrogate_key(['product_id']) }} as product_key,
    product_id,
    product_name,
    product_number,
    category_name,
    subcategory_name,
    model_name,
    make_flag,
    finished_goods_flag,
    reorder_point,
    product_modified_date

from {{ ref('slv_dim_adventure_works_production__product_join_category_model') }}
