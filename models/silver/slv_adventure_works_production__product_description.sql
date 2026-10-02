select
    product_description_id,
    description,
    rowguid,
    cast(modified_date as timestamp_ntz) as modified_date

from {{ ref('adw_core', 'brz_adventure_works_production__product_description') }}
