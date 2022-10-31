with hosts_data as (
    select * from {{ source( 'airbnb', 'hosts' )}}
)
select 
   a.id host_id,
   a.name host_name,
   a.is_superhost,
   a.created_at,
   a.updated_at
from hosts_data a