{{config(materialized='table')}}

select 
* from {{ref('employee_ephermel_model')}}