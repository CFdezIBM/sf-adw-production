select
    document_node,
    document_level,
    title,
    owner,
    folder_flag,
    file_name,
    file_extension,
    cast(revision as varchar(5)) as revision,
    change_number,
    status,
    document_summary,
    rowguid,
    modified_date

from {{ ref('adw_core', 'brz_adventure_works_production__document') }}

