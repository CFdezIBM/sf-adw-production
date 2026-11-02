select
    w.work_order_id,
    w.product_id,

    -- quantities ------------------------------------------------------------
    w.order_qty,
    w.stocked_qty,
    w.scrapped_qty,

    -- dates -----------------------------------------------------------------
    w.start_date,
    w.end_date,
    w.due_date,

    -- scrap (from scrap_reason) ---------------------------------------------
    w.scrap_reason_id,
    s.name as scrap_reason_name,

    w.modified_date

from {{ ref('slv_adventure_works_production__work_order') }} w
left join {{ ref('slv_adventure_works_production__scrap_reason') }} s
    on w.scrap_reason_id = s.scrap_reason_id
