select
    product_id,
    product_photo_id,
    primary,
    modified_date

from {{ ref('adw_core', 'brz_adventure_works_production__product_product_photo') }}
