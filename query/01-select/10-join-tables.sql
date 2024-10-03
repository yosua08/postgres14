/*
 * Join tables
 */

-- Simple natural join 
select *
from employees
	 natural join jobs;

-- Multiple natural join 
select *
from employees
	 natural join jobs
	 natural join departments
	 natural join locations;
	 
-- Using specify column in natural join 
select emp.employee_id, 
	   concat(emp.first_name, ' ', last_name) as full_name,
	   emp.employee_id,
	   job.job_title,
	   emp.department_id,
	   dep.department_name 
from employees emp
	 natural join jobs job
	 natural join departments dep;
	 
-- Cross join 
select dep.department_id,
	   dep.department_name,
	   job.job_id,
	   job.job_title 
from departments dep
	 cross join jobs job;
	 
-- Inner join 
select emp.employee_id, 	
	   emp.first_name,
	   job.job_title,
	   job.max_salary,
	   dep.department_name 
from employees emp
	 inner join jobs job on (emp.job_id = job.job_id)
	 inner join departments dep on (emp.department_id = dep.department_id);
	 
