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

--Uc3
select * from INFORMATION_SCHEMA.columns where table_name='employee'
insert into employee_payroll values ('Shivani',20000,'2018-02-21')
insert into employee_payroll (salary,start_date,name) values (2000,'2023-02-03','Trisha')
insert into employee_payroll values
('jasmin',34567,'2019-09-08'),
('sima',9877,'2012-06-05')
insert into employee_payroll values ('Vrutik',3245,'2021-08-12'),
('shubh',4321,'2019-09-24')

--Uc4

select * from employee_payroll

--Uc5
select salary from employee_payroll where name ='Shivani'
select * from employee_payroll where start_date between '2019-02-22' and '2023-04-21'

--Uc6
alter table employee_payroll add Gender char(1)
update employee_payroll set Gender ='F' where name='Shivani' or name='sima'
update employee_payroll set gender ='F' where id in (2,3)
update employee_payroll set gender ='M' where id in (5,6)