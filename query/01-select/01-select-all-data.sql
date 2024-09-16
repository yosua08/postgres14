/*
 * Select implementation in PostgreSQL
 */

-- Select All data from table
SELECT *
FROM departments;

-- Select data base on column name
select department_id, 
	   department_name, 
	   manager_id, 
	   location_id
from departments;

-- Alias
select department_id as kode_divisi,
	   department_name nama_department,
	   manager_id as "Kode Manager"
from departments;

-- Escape character
select department_name || E'\n' || department_id 
from departments;

-- Eliminate duplicate rows (DISTINCT)
-- Distinct
select distinct (job_id, manager_id),
	   job_id,
	   manager_id
from employees;
-- Distinct on
select distinct on (job_id, department_id) 
	   job_id, 
	   department_id
from employees;

