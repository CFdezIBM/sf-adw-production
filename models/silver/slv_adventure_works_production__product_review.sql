select
    product_review_id,
    product_id,
    reviewer_name,
    review_date,
    email_address,
    rating,
    comments,
    modified_date

from {{ ref('adw_core', 'brz_adventure_works_production__product_review') }}
