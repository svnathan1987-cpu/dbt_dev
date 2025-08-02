{{
    config(
        materialized='table'
    )
}}

{{
    config(
        tags=["hr_table"]
    )
}}

select *
from  MY_DB.MY_SCHEMA.EMPLOYEES