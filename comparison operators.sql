-- Comparison operators 
create database storedb;
use storedb;
create table products (
product_id int auto_increment primary key,
product_name varchar(50),
category varchar(50),
price decimal(10,2),
stock int );

insert into products (product_name,category,price,stock) values
('Laptop','	Electronics',	80000	,10),
 (  'Mouse'	,'Electronics', 500, 50  ),
 ('Keyboard',	'Electronics',	2500	,0),
 ('Desk Lamp',	'Decor'	,1200,	15),
 ('Office Chair',	'Furniture',	5500	,NULL);
 
 
 
 -- Get all products with a price of exactly 600
 select * from products where price>=600;
 
 -- Get all products that are NOT priced at 800
 select*from products where not price = 2500;
 select*from products where price!=2500;
 select*from products where price<>2500;
 select * from products;
 -- Get all products priced above 700
 select*from products where price>700;
 
 -- Get all products priced at or below 5000
 select *from products where price <=5000;
 
 -- Get all products priced at or above 8000
 select*from products where price >=80000;
 
 -- Get all products where the category is exactly "Electronics"
 select*from products where category='electronics';
 
 
 
 
 
 
 
 
 
 