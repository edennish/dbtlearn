select 
    a.listing_id,
    a.date review_date,
    a.reviewer_name,
    a.comments review_text,
    a.sentiment review_sentiment
from {{ source( 'airbnb', 'reviews' )}} a