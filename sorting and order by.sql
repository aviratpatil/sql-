--  sorting and  order by 
use storedb;
create table productss(product_id int primary key auto_increment,product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock_quantity INT,
    last_updated TIMESTAMP
);
INSERT INTO productss VALUES
(1, 'Laptop Pro', 'Electronics', 1299.99, 50, '2024-01-15 10:00:00'),
(2, 'Desk Chair', 'Furniture', 199.99, 30, '2024-01-16 11:30:00'),
(3, 'Coffee Maker', 'Appliances', 79.99, 100, '2024-01-14 09:15:00'),
(4, 'Gaming Mouse', 'Electronics', 59.99, 200, '2024-01-17 14:20:00'),
(5, 'Bookshelf', 'Furniture', 149.99, 25, '2024-01-13 16:45:00');
-- Display all records (unsorted)
select * from productss;

-- sort all products by price 
select*from productss order by price asc;

-- sort all products by last updated 
select*from productss order by last_updated;

-- order by and limit
 select * from productss order by stock_quantity desc limit 1;
 
 -- custom sorting 
 select*from productss order by category;
 
 select * from productss order by field(category,'Electronics','Appliances','Furniture'), price asc;

 