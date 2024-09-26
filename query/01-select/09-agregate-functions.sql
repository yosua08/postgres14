/*
 * Group / Agregate functions
 */

select count(*) as row_count
from employees;

select max(salary)
from employees;

select min(salary) as
from employees;

select max(coalesce(commission_pct, 0)) as max_commision
from employees;

select min(coalesce(commission_pct, 0)) as max_commision
from employees;

select avg(salary) 
from employees
where job_id ='IT_PROG';

-- Group by query
select distinct(job_id)
from employees;

select job_id,
	   count(employee_id) as employee_count,
	   max(salary) as max_salary,
	   sum(salary) as sum_slary
from employees
group by job_id;

select department_id, job_id,
       count(*) as empleyee_by_dep_and_job 
from employees
group by department_id, job_id
order by job_id;