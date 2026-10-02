select
    product_model_id,
    product_description_id,
    culture_id,
    modified_date

from {{ ref('adw_core', 'brz_adventure_works_production__product_model_product_description_culture') }}

