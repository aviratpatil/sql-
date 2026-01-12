create database aviratdb;
use aviratdb;
create table employees(
employee_id int primary key auto_increment,
first_name varchar(50) not null,
last_name varchar(50) not null,
hire_date date  default (current_date()),
email varchar(100) unique not null,
phone_no varchar(100) unique not null,
salary decimal(10,2)  check(salary >0.0),
employment_status enum('active','on leave', 'terminated') default 'active',
created_at timestamp default current_timestamp,
updated_at timestamp default current_timestamp on update current_timestamp
);

insert into employees( 
first_name, last_name,hire_date, email,phone_no,salary,employment_status)
values(
'avirat',
'patil',
'2026-01-15',
'aviratpatil2004@gmail.com',
'123456789',
 550000,
'active');

select * from employees;
create table departments (
department_id int primary key auto_increment,
department_name varchar(100) not null,
location varchar(100),
created_at timestamp default current_timestamp,
updated_at timestamp default current_timestamp on update current_timestamp
);

insert into departments (  department_name,location)
values('IT','Building A'),('Sales','Building B'),('HR','Building');
select * from employees;

alter table employees add column department_id int  not null;
alter table employees drop column department_id;

ALTER TABLE departments
MODIFY department_id INT  AUTO_INCREMENT not null;


alter table employees add foreign key (department_id) references departments(department_id);
	



