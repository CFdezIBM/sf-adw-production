select
    transaction_id,
    product_id,
    reference_order_id,
    reference_order_line_id,
    cast(transaction_date as timestamp_ntz) as transaction_date,
    transaction_type,
    quantity,
    cast(actual_cost as number(19,4)) as actual_cost,
    cast(modified_date as timestamp_ntz) as modified_date
from {{ ref('adw_core', 'brz_adventure_works_production__transaction_history_archive') }}