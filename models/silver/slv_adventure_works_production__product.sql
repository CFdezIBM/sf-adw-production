select
    product_id,
    name,
    product_number,
    cast(make_flag as boolean) as make_flag,
    cast(finished_goods_flag as boolean) as finished_goods_flag,
    color,
    safety_stock_level,
    reorder_point,
    cast(standard_cost as number(19,4)) as standard_cost,
    cast(list_price as number(19,4)) as list_price,
    size,
    size_unit_measure_code,
    weight_unit_measure_code,
    cast(weight as number(8,2)) as weight,
    days_to_manufacture,
    product_line,
    class,
    style,
    cast(product_subcategory_id as number(38,0)) as product_subcategory_id,
    cast(product_model_id as number(38,0)) as product_model_id,
    cast(sell_start_date as timestamp_ntz) as sell_start_date,
    -- sell_end_date y discontinued_date llegan como FLOAT desde la fuente (sell_end_date trae 0
    -- en lugar de la fecha real). Snowflake no castea FLOAT a timestamp, se pasa por varchar.
    cast(cast(nullif(sell_end_date, 0) as varchar) as timestamp_ntz) as sell_end_date,
    cast(cast(discontinued_date as varchar) as timestamp_ntz) as discontinued_date,
    rowguid,
    cast(modified_date as timestamp_ntz) as modified_date

from {{ ref('adw_core', 'brz_adventure_works_production__product') }}
