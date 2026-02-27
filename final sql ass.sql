-- create a database 
CREATE DATABASE Storedb;

USE Storedb;

-- Create Products table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

-- Create Customers table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Create Sales table with foreign keys
CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    product_id INT NOT NULL,
    customer_id INT NOT NULL,
    quantity INT NOT NULL,
    sale_date DATE NOT NULL,
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Customers (customer_id, customer_name, email) VALUES
(1, 'Alice Smith', 'alice@email.com'),
(2, 'Bob Johnson', 'bob@email.com'),
(3, 'Carol Lee', 'carol@email.com'),
(4, 'David Brown', 'david@email.com'),
(5, 'Eva Wilson', 'eva@email.com');

INSERT INTO Products (product_id, product_name, price) VALUES
(1, 'Laptop', 1200),
(2, 'Phone', 800),
(3, 'Headphones', 150),
(4, 'Monitor', 300),
(5, 'Keyboard', 50);

INSERT INTO Sales (sale_id, product_id, customer_id, quantity, sale_date) VALUES
(1, 1, 2, 1, '2025-09-01'),
(2, 3, 1, 2, '2025-09-02'),
(3, 2, 5, 1, '2025-09-03'),
(4, 4, 3, 1, '2025-09-04'),
(5, 5, 4, 3, '2025-09-05');

