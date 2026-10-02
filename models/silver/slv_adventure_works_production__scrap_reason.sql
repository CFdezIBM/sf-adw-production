select
    scrap_reason_id,
    name,
    modified_date

from {{ ref('adw_core', 'brz_adventure_works_production__scrap_reason') }}
