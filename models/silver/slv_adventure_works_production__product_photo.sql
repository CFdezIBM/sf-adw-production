select
    product_photo_id,
    thumbnail_photo_file_name,
    large_photo_file_name,
    modified_date

from {{ ref('adw_core', 'brz_adventure_works_production__product_photo') }}
