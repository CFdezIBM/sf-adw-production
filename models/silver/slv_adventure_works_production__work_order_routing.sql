select
    work_order_id,
    product_id,
    operation_sequence,
    location_id,
    cast(scheduled_start_date as timestamp_ntz) as scheduled_start_date,
    cast(scheduled_end_date as timestamp_ntz) as scheduled_end_date,
    cast(actual_start_date as timestamp_ntz) as actual_start_date,
    cast(actual_end_date as timestamp_ntz) as actual_end_date,
    cast(actual_resource_hrs as number(9,4)) as actual_resource_hrs,
    cast(planned_cost as number(19,4)) as planned_cost,
    cast(actual_cost as number(19,4)) as actual_cost,
    cast(modified_date as timestamp_ntz) as modified_date

from {{ ref('adw_core', 'brz_adventure_works_production__work_order_routing') }}
