select
    product_id,
    cast(start_date as timestamp_ntz) as start_date,
    cast(end_date as timestamp_ntz) as end_date,
    cast(list_price as number(19,4)) as list_price,
    cast(modified_date as timestamp_ntz) as modified_date
from {{ ref('adw_core', 'brz_adventure_works_production__product_list_price_history') }}