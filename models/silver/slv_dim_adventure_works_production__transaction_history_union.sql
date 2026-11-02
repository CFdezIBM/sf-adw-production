select
    -- keys ------------------------------------------------------------------
    transaction_id,
    product_id,

    -- reference order (meaning depends on transaction_type) -----------------
    reference_order_id,
    reference_order_line_id,

    -- event -----------------------------------------------------------------
    transaction_date,
    transaction_type,
    quantity,
    actual_cost,

    -- lineage ---------------------------------------------------------------
    'HISTORY' as source_system,
    modified_date

from {{ ref('slv_adventure_works_production__transaction_history') }}

union all

select
    transaction_id,
    product_id,

    reference_order_id,
    reference_order_line_id,

    transaction_date,
    transaction_type,
    quantity,
    actual_cost,

    'ARCHIVE' as source_system,
    modified_date

from {{ ref('slv_adventure_works_production__transaction_history_archive') }}
