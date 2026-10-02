select
    product_model_id,
    name,
    catalog_description,
    instructions,
    rowguid,
    modified_date

from {{ ref('adw_core', 'brz_adventure_works_production__product_model') }}
