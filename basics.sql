
use aviratdb;
create table employees1(
Id int primary key auto_increment,
Name  varchar(100) not null,
Department varchar(100) not null,
Salary varchar(100) not null,
City varchar(100) not null
);

insert into employees1( Name ,Department,Salary,City )
values('Avirat',	'IT',	'75000','Mumbai'),
('Shreya',	'HR',  '60000','	Pune'),
('Rahul',	'IT','80000','	Mumbai'),
('Snehal','	Marketing',' 55000','	Bangalore'),
('Amit','IT','75000','Pune');
select * from employees1;
select * from employees1 where Department='IT';

select Name as 'First_Name',Department, Salary from employees1;

select Name from employees1 where Salary>70000;
select Name,Salary  from employees1 where  Salary>70000 or Department='IT';
select Name from employees1 where Department="IT" ; 
select Name ,Salary from employees1  order by Salary asc;
select Name ,Salary from employees1  order by Salary desc;

select Name from  employees1 order by Salary desc limit 2;
select * from employees1;
select Name as Employee_Name , Salary * 12 as Annual_Package from employees1;
select concat(Name,Department) from employees1;
select * from employess1 where  City  like 'u%'  ;

select Name,Salary  from employees1 where  Salary>70000 or Department='IT';
