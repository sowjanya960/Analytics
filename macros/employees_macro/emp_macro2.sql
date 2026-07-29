{% macro department_code(column_name) %}

case when {{column_name}} ='IT' then 'Information Technology'
when {{column_name}} ='HR' THEN 'HUMAN RESOURCE'
ELSE {{column_name}}
end 

{% endmacro %}
