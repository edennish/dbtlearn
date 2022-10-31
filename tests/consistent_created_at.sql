select *
from {{ ref('fct_reviews')}} a
     left outer join {{ ref('dim_listings_cleansed')}} b
     on b.listing_id = a.listing_id
where a.review_date < b.created_at