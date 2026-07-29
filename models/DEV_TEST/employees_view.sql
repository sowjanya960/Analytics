{{config(materialized='view',
         secure = true)}}  ---not to show the view script in snowflake for all users 

select * from 
{{ref('employees_table')}}
where employee_department='IT'