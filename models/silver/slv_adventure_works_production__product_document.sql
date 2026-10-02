select
    product_id,
    document_node,
    modified_date

from {{ ref('adw_core', 'brz_adventure_works_production__product_document') }}
