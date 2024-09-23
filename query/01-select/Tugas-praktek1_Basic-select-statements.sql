/*
 * Tugas Praktek 1 : Basic select statements
 */

-- 1. Buatlah query untuk menampilkan seluruh data karyawan dari table employees yang diurutkan berdasarkan email paling terakhir.
select *
from employees
order by email desc;

-- 2. Buatlah query untuk menampilkan data karyawan yang gajinya lebih besar 3200.00 sampai dengan 12000.00
select employee_id, first_name, last_name, salary
from employees
where salary between 3200 and 12000
order by salary;

-- 3. Buatlah query untuk menampilkan data karyawan yang memiliki huruf A diawal nama depannya.
select employee_id, first_name, last_name, salary 
from employees
where first_name like 'A%';

-- 4. Buatlah query untuk menampilkan data karyawan yang memiliki kode karyawan diantaranya 103, 115, 196, 187, 102 dan 100
select employee_id, first_name, last_name, salary 
from employees
where employee_id in ('103', '115', '196', '187', '102', '100');

-- 5. Buatlah query untuk menampilkan data karyawan yang nama belakangnya memiliki huruf kedua u.
select employee_id, first_name, last_name, salary 
from employees
where last_name like '%u_';

-- 6. Buatlah query untuk menampilkan kode department apa saja yang ada di tabel employees secara unique
select distinct(department_id)
from employees;

-- 7. Buatlah query untuk menampilkan nama lengkap karyawan, kode jabatan, gaji setahun dari table employees yang kode manager sama dengan 100.
select first_name || ' ' || last_name as "Nama Lengkap",
	   job_id, salary * 12 as "Gaji Setahun"
from employees
where manager_id = 100;
 
-- 8. Buatlah query untuk menampilkan nama belakang, gaji perbulan, kode jabatan dari table employees yang tidak memiliki komisi
select last_name, salary, 
       job_id 
from employees
where commission_pct is null;

-- 9. Buatlah query untuk menampilkan data karyawan yang bukan dari jabatan IT_PROG dan SH_CLERK.
select * 
from employees
where job_id not in ('IT_PROG', 'SH_CLERK');