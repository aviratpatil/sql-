-- =================================================================
-- Mysql limit clause 
-- =================================================================

CREATE DATABASE db13;
USE db13;
CREATE TABLE products (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100),
price DECIMAL(10,2),
category VARCHAR(50),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO products (name, price, category) VALUES
('Laptop', 999.99, 'Electronics'),
('Smartphone', 499.99, 'Electronics'),
('Coffee Maker', 79.99, 'Appliances'),
('Headphones', 149.99, 'Electronics'),
('Blender', 59.99, 'Appliances'),
('Tablet', 299.99, 'Electronics'),
('Microwave', 199.99, 'Appliances'),
('Smart Watch', 249.99, 'Electronics'),
('Toaster', 39.99, 'Appliances'),
('Speaker', 89.99, 'Electronics');
select * from products;

-- 2. Basic LIMIT Usage
-- The LIMIT clause specifies the maximum number of rows the database 
-- should return. If you only want the top 5 records, you use LIMIT 5.
select * from products order by id limit 2;

-- 3. LIMIT with OFFSET 
-- OFFSET
-- The OFFSET clause tells the database to skip a specific number of rows before it starts returning results.
-- If you say OFFSET 10, the database throws away the first 10 rows and starts showing data from row 11.
SELECT * FROM products ORDER BY id LIMIT 2 OFFSET 2;
-- offset is the secret behind the pagination 
-- 4. Pagination Implementation

-- Page size: 3 items per page
-- For page 1 (Using OFFSET syntax):
SELECT * FROM products LIMIT 3 OFFSET 0;
-- for page 2 next 3 records
select*from products limit 3 offset 3;
-- for page 3 next 3 records
select*from products limit 3 offset 6;
-- top 3 most expensive prodects 
select*from products order by price desc limit 3;

-- get ramdom 5 products 
select*from products order by rand()   limit 5;

-- 6. Performance Considerations

-- Example of potentially slow query with large offset
SELECT *
FROM products  -- Note: In real scenario, this would be a much larger table
ORDER BY created_at
LIMIT 1000000, 10;
-- Better alternative using WHERE clause
SELECT *
FROM products
WHERE created_at > '2025-01-01 00:00:00'
ORDER BY created_at
LIMIT 10;



