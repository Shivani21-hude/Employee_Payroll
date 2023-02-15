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

--Uc7
select sum(salary) from employee_payroll where Gender='M'
select gender, sum(Salary) from employee_payroll where gender='M' group by gender
select gender,AVG(salary) from employee_payroll group by gender
select gender,count(name) from employee_payroll group by gender
select max(salary) "Highest_Salary" from employee_payroll 
select min(salary) "Minimum_Salary" from employee_payroll 

--Uc8
alter table employee_payroll add phonenumber int ,
address varchar(300) not null default 'India',
department varchar(50)

--Uc9
alter table employee_payroll add 
Basic_pay money,
Deductions money,
TexablePay money,
IncomeTax money,
NetPay money

--Uc10
insert into employee_payroll values ('sima',2345,'2019-09-30','F',NULL,'India','Mechanical',NULL,NULL,NULL,NULL,NULL)