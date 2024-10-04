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
	 
-- Left right outer join
select emp.employee_id,
	   emp.first_name,
	   dep.department_id,
	   dep.department_name 
from employees emp 
	 right join departments dep on (emp.department_id = dep.department_id);
	 
-- Full outer join
select emp.employee_id,
	   emp.first_name,
	   dep.department_id,
	   dep.department_name 
from employees emp 
	 full join departments dep on (emp.department_id = dep.department_id);
	 
-- Self join
select emp.employee_id as employee_id,
	   emp.first_name as employee_name,
	   man.employee_id as manager_id,
	   man.first_name as manager_name
from employees emp
	 join employees man on (emp.manager_id = man.employee_id);
	 
-- Join condition expression
select emp.employee_id,
	   emp.first_name,
	   dep.department_id,
	   dep.department_name 
from employees emp
	 join departments dep on (emp.department_id = dep.department_id);
	 
select emp.employee_id,
	   emp.first_name,
	   dep.department_id,
	   dep.department_name 
from employees emp
	 join departments dep using (department_id);
	 
select emp.employee_id,
	   emp.first_name,
	   dep.department_id,
	   dep.department_name 
from employees emp, departments dep
where emp.department_id = dep.department_id;