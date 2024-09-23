/*
 * Order By
 */

-- Basic order by clause
select *
from departments
order by department_id desc;

select *
from departments
order by department_name;

-- Sort expression
select employee_id ,first_name ,salary , 
       coalesce(commission_pct, 0) as commision_digit,
       salary * coalesce(commission_pct, 0) as commision_currency
from employees
order by salary * coalesce(commission_pct, 0);

select employee_id ,first_name ,salary , 
       coalesce(commission_pct, 0) as commision_digit,
       salary * coalesce(commission_pct, 0) as commision_currency
from employees
order by 1;

-- Multiple sort columns
select location_id, department_id, department_name 
from departments
order by location_id asc, department_id desc;

-- Choose null value show in first or last
select employee_id, salary, commission_pct 
from employees
order by salary, commission_pct asc nulls last;