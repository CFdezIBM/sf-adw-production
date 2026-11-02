select
    b.bill_of_materials_id,

    -- products --------------------------------------------------------------
    b.product_assembly_id,
    b.component_id,

    -- validity --------------------------------------------------------------
    b.start_date,
    b.end_date,

    -- quantity and unit (from unit_measure) ---------------------------------
    b.per_assembly_qty,
    b.unit_measure_code,
    u.name as unit_measure_name,
    b.bomlevel as bom_level,

    b.modified_date

from {{ ref('slv_adventure_works_production__bill_of_materials') }} b
left join {{ ref('slv_adventure_works_production__unit_measure') }} u
    on b.unit_measure_code = u.unit_measure_code
