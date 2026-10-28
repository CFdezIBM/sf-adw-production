{{ config(
    alias='dim_product',
    materialized='view',
    access='public'
) }}

select
    product_key,
    product_id,
    product_name,
    product_number,
    category_name,
    subcategory_name,
    model_name,
    make_flag,
    finished_goods_flag,
    reorder_point,
    product_modified_date,
    product_valid_from,
    product_valid_to,
    product_updated_at

from {{ ref('snp_dim_product') }}
