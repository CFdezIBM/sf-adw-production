select
    location_id,
    name,
    cast(cost_rate as number(19,4)) as cost_rate,
    cast(availability as number(8,2)) as availability,
    cast(modified_date as timestamp_ntz) as modified_date

from {{ ref('adw_core', 'brz_adventure_works_production__location') }}
