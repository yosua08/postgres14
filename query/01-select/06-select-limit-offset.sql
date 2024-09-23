/*
 * Limit offset 
 */


-- Limiting data rows
select employee_id, first_name, salary, commission_pct
from employees
limit 10;

-- Offset data
select * 
from departments
order by department_id 
offset 4;

-- Implement limit and offset both
select *
from  employees
order by employee_id 
limit 10
offset 10;