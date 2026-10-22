select
    p.product_id,
    p.name as product_name,
    p.product_number,
    c.name as category_name,
    sc.name as subcategory_name,
    m.name as model_name,
    p.make_flag,
    p.finished_goods_flag,
    p.reorder_point,
    p.modified_date as product_modified_date

from {{ ref('slv_adventure_works_production__product') }} p
left join {{ ref('slv_adventure_works_production__product_subcategory') }} sc
    on p.product_subcategory_id = sc.product_subcategory_id
left join {{ ref('slv_adventure_works_production__product_category') }} c
    on sc.product_category_id = c.product_category_id
left join {{ ref('slv_adventure_works_production__product_model') }} m
    on p.product_model_id = m.product_model_id
