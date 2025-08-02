{{
    config(
        materialized='table'
    )
}}

with temp_tb as (
    select * from MY_DB.MY_SCHEMA.DEPARTMENTS_LD
    union all
    select * from {{ ref('my_third_dbt_model') }}
)
 
select * from temp_tb

