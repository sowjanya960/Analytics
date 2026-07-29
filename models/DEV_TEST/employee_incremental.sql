{{config(materialized='incremental')}}

select * from {{source('ANALYTICS','EMPLOYEES')}}

{% if is_incremental() %}
WHERE updated_at >
(
SELECT MAX(updated_at)
FROM {{ this }}
)
{% endif %}
