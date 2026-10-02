select
    product_id,
    location_id,
    shelf,
    bin,
    quantity,
    rowguid,
    cast(modified_date as timestamp_ntz) as modified_date

from {{ ref('adw_core', 'brz_adventure_works_production__product_inventory') }}
