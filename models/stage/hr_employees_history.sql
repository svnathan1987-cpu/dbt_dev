{{
    config(
        materialized='table'
    )
}}



select e.employee_id, concat(e.first_name, ' ',e.last_name) as Name, j.job_title, d.department_name, jh.start_date, jh.end_date
from {{ ref('hr_employees') }} e
join {{ ref('hr_job_history') }} jh 
on e.employee_id = jh.employee_id and jh.start_date between '1993-01-01' and '2006-08-31'
join {{ ref('hr_departments') }} d
on e.department_id = d.department_id
join {{ ref('hr_jobs') }} j
on e.job_id = j.job_id