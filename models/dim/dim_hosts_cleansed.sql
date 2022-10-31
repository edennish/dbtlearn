{{
    config(
        materialized = 'view',
    )
}}

WITH src_hosts AS (
        SELECT * FROM {{ ref('src_hosts') }}
)
select 
   a.host_id, 
   nvl(a.host_name,'Anonymous') as host_name,
   a.is_superhost, 
   a.created_at, 
   a.updated_at
from src_hosts a