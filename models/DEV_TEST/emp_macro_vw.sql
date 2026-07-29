{{config(materialized='view')}}

select 
* ,
{{department_code('DEPARTMENT')}} as emp_updated_department
from {{ref('emp_macro')}}