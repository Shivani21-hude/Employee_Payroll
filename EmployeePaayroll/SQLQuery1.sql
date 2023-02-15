-- Welcome to employee payroll service 
--UC1

create database Payroll
select db_name()
use Payroll

--Uc2
create table employee_payroll(
id int identity(1,1) primary key,
name varchar(200),
salary int,
start_date date
);
