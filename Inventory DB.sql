CREATE DATABASE inventory_management; 
USE inventory_management; -- Create Products Table 
CREATE TABLE products ( 
product_id INT PRIMARY KEY, 
product_name VARCHAR(255), 
category VARCHAR(50), 
price DECIMAL(10, 2) 
); -- Create Sales Table 
CREATE TABLE sales ( 
sale_id INT PRIMARY KEY, 
product_id INT, 
quantity INT, 
total_price DECIMAL(10, 2), 
FOREIGN KEY (product_id) REFERENCES products(product_id) 
); -- Insert Sample Data into Products Table 
INSERT INTO products (product_id, product_name, category, price) 
VALUES 
(1, 'Smartphone', 'Electronics', 500.00), 
(2, 'Jeans', 'Apparel', 40.00), 
(3, 'Desk', 'Furniture', 200.00), 
(4, 'Running Shoes', 'Footwear', 90.00); -- Insert Sample Data into Sales Table 
INSERT INTO sales (sale_id, product_id, quantity, total_price) 
VALUES 
(201, 1, 3, 1500.00), 
(202, 2, 2, 80.00), 
(203, 4, 5, 450.00), 
(204, 3, 1, 200.00);

-- Questions

-- 1. Retrieve all products from the `products` table.
SELECT * FROM products;
 
-- 2. Find the total number of sales. 
SELECT COUNT(*) AS total_sales FROM sales;

-- 3. List the products with a price greater than $50.00. 
SELECT * 
FROM products
WHERE price > 50.00;

-- 4. Retrieve the sale ID, product name, and total price for each sale. 
SELECT s.sale_id, p.product_name, s.total_price
FROM sales s
JOIN products p ON s.product_id = p.product_id;

-- 5. Calculate the total revenue generated from the sales. 
SELECT SUM(total_price) AS total_revenue
FROM sales;

-- 6. Get the average price of products in the `products` table. 
SELECT AVG(price) AS average_price
FROM products;

-- 7. Find the highest total price among the sales.
SELECT MAX(total_price) AS highest_sale_price
FROM sales;
 
-- 8. List the products along with their categories.
SELECT product_name, category
FROM products;
 
-- 9. Find the product(s) with the highest price. 
SELECT product_name, price
FROM products
WHERE price = (SELECT MAX(price) FROM products);

-- 10. Retrieve the sale ID and quantity for sales where the total price is greater than $200.00. 
SELECT sale_id, quantity
FROM sales
WHERE total_price > 200.00;

-- 11. Find the product with the lowest price.
SELECT product_name, price
FROM products
WHERE price = (SELECT MIN(price) FROM products);
 
-- 12. List the categories with the number of products they contain.
 SELECT category, COUNT(*) AS number_of_products
FROM products
GROUP BY category;

-- 13. Calculate the total quantity of products sold. 
SELECT SUM(quantity) AS total_quantity_sold
FROM sales;

-- 14. Retrieve the product name and price for products in the 'Electronics' category.
SELECT product_name, price
FROM products
WHERE category = 'Electronics';
