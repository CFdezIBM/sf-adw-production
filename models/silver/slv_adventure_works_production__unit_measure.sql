select
    unit_measure_code,
    name,
    cast(modified_date as timestamp_ntz) as modified_date

from {{ ref('adw_core', 'brz_adventure_works_production__unit_measure') }}
