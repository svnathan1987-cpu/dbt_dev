{{
    config(
        materialized='view'
    )
}}


select * from MY_DB.MY_SCHEMA.DEPARTMENTS_LD limit 20