select
    product_model_id,
    illustration_id,
    modified_date

from {{ ref('adw_core', 'brz_adventure_works_production__product_model_illustration') }}

