select
    illustration_id,
    diagram,
    modified_date

from {{ ref('adw_core', 'brz_adventure_works_production__illustration') }}
