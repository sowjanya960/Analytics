{{config(materialized='table')}}

select 
* ,
lower_column('EMP_NAME') AS employee_name_updated
from {{source('ANALYTICS','EMPLOYEES')}}