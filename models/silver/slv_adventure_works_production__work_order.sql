select
    work_order_id,
    product_id,
    order_qty,
    stocked_qty,
    scrapped_qty,
    cast(start_date as timestamp_ntz) as start_date,
    cast(end_date as timestamp_ntz) as end_date,
    cast(due_date as timestamp_ntz) as due_date,
    cast(scrap_reason_id as number(38,0)) as scrap_reason_id,
    cast(modified_date as timestamp_ntz) as modified_date

from {{ ref('adw_core', 'brz_adventure_works_production__work_order') }}
