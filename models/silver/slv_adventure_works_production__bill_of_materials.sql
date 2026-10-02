select
    bill_of_materials_id,
    cast(product_assembly_id as number(38,0)) as product_assembly_id,
    component_id,
    cast(start_date as timestamp_ntz) as start_date,
    try_to_timestamp_ntz(end_date) as end_date,
    unit_measure_code,
    bomlevel,
    cast(per_assembly_qty as number(8,2)) as per_assembly_qty,
    cast(modified_date as timestamp_ntz) as modified_date

from {{ ref('adw_core', 'brz_adventure_works_production__bill_of_materials') }}
