{% snapshot EMPLOYEES_SNAPSHOT %}

{{

    config 
    (
      unique_key ='emp_id',
       strategy = 'timestamp',  
       updated_at = 'updated_at'
    )

}}

select * from {{source('ANALYTICS','EMPLOYEES')}}

 {% endsnapshot %}