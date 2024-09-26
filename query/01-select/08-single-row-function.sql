/*
 * Single row functions
 */

select employee_id,
	   concat(first_name, ' ', last_name) as full_name,
	   to_char(salary, '$L999,999,999') as salary,
	   coalesce(commission_pct, 0) as commission
from employees
limit 10;

select employee_id,
	   concat(first_name, ' ', last_name) as full_name,
	   to_char(salary, '$L999,999,999') as salary,
	   coalesce(commission_pct, 0) as commission
from employees
where coalesce(commission_pct, 0) > 0
limit 10;