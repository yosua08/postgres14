/*
 * Where Clause
 */

-- Relational predicate
select *
from employees
where employee_id=101;

select employee_id , first_name , salary 
from employees
where salary >= 15000;

-- Like predicate
select *
from employees
where last_name like 'A%';

select *
from employees
where first_name like '_u%';

select *
from employees
where last_name ilike 'a%';

-- Between predicate
select *
from employees
where salary between 15000 and 25000;

select *
from employees
where substring(email from 1 for 1) between 'A' and 'J';

-- Null predicate
select *
from employees
where manager_id is null;

select *
from employees
where manager_id is not null;

-- Logical predicate
select *
from  employees
where manager_id = 100 and department_id = 90;

select *
from employees
where manager_id = 100 or department_id = 90;

select *
from employees
where job_id not like '%_MAN';

select *
from employees
where manager_id = 100 and (department_id = 90 or salary > 10000) and commission_pct is not null;

-- Regular expression (Regex) predicate
select *
from employees
where first_name similar to '%(v|ph)en';

select *
from employees
where first_name ~ '^S.*(a|v|ph)';

-- Row and array comparasions
select *
from employees
where job_id in ('IT_PROG', 'FI_ACCOUNT', 'PU_CLERK');

select * 
from employees
where salary in (3100, 7700, 4800, 6000);

select * 
from employees
where salary not in (3100, 7700, 4800, 6000);

select *
from employees e 
where job_id = any (array['IT_PROG', 'FI_ACCOUNT', 'PU_CLERK'])

select *
from employees e 
where salary = any (array[3100, 7700, 4800, 6000])