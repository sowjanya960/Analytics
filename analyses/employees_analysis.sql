
--select count(*) from {{source('ANALYTICS','EMPLOYEES')}} as src,
--join select count(*) from {{ref('employees_table')}}

select src.source_code,src_counts,tgt_counts,src_counts-tgt_counts as diff from 
(select 'Employee' as source_code,count(*) as src_counts  FROM {{source('ANALYTICS','EMPLOYEES')}} ) src
inner join
( select * from
(select  source_code,sum(counts) as tgt_counts from  
( SELECT 'Employee' AS source_code, count(*) as counts  FROM {{ref('employees_table')}}
)group by source_code )) tgt
on tgt.source_code =src.source_code