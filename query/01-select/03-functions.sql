/*
 * Build-in Functions
 */

-- String functions
select concat(first_name, ' ', last_name) as full_name,
	   lower(email) as lower_email,
	   reverse(last_name) as reverse_name,
	   length(concat(first_name, ' ', last_name)) as length_from_concat
from employees;

-- Math functions
select 3 *3 as multiply,
	   div(10, 3) as division,
	   mod(10, 3) as modulus,
	   round(5.4435, 2) as rounding_up,
	   floor(5.4) as floor;
	   
-- Date/Time functions
select employee_id,
	   current_timestamp,
	   current_date,
	   start_date,
	   extract(year from age(current_timestamp, start_date)) as tahun_kerja 
from job_history;

-- Null functions
select coalesce(null, 'data1', 'data2') as return_data1,
	   coalesce(null, null, 'data2') as return_data2,
	   coalesce(null, null, null) as return_null,
	   nullif(null, 'data1') as return_null1,
	   nullif('data1', 'data1') as return_null2,
	   nullif('data1', 'data2') as return_data1;
	   
	select employee_id,
		   commission_pct,
		   coalesce(commission_pct, 0),
		   salary * coalesce(commission_pct, 0) as bonus
	from employees;