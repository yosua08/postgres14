/*
 * Build-in SQL Operators in PostgreSQL
 */

-- Mathematic Operator
select 2+2 as tambah,
	   2*2 as kali,
	   3^2 as pangkat,
	   11%2 as mod;
	   
select first_name, 
	   salary,
	   commission_pct,
	   salary * commission_pct as bonus
from employees
order by salary desc
limit 10;

-- Date Operator
select current_date -2 as lusa,
	   current_date +1 as besok,
	   current_timestamp as sekarang,
	   current_timestamp - interval '2 hour' as "Kurang 2 jam";
	   
-- Concate Operator
select employee_id id,
	   first_name,
	   last_name,
 	   first_name || ' ' || last_name as "Nama Lengkap"
from employees;

-- Typecast Operator
select cast ('100' as int) + 200 as string_to_int,
	   '100'::int as str_to_int,
	   cast (100 as character varying) as int_to_string;
	   
-- Logical Operator
select (true and true) "AND => true x true",
	   (true and false) "AND => true x false",
	   (true and null) "AND => true x null",
	   (true or true) "OR => true x true",
	   (true or false) "OR => true x false",
	   (true or null) "OR => true x null";
	   
-- Comparison Operator
select 3>4 as less_than,
	   10000 is not null as not_null,
	   '23-JUN-2024'::date <> current_date,
	   'on'::boolean;
	   