-- Step 1: Create the database
CREATE DATABASE CompanyDB;


USE CompanyDB;


CREATE TABLE Branch (
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(100) NOT NULL,
    location VARCHAR(100) NOT NULL
);

-- Step 4: Insert branch records
INSERT INTO Branch (branch_id, branch_name, location) VALUES
(1, 'Head Office', 'New York'),
(2, 'West Coast Branch', 'Los Angeles'),
(3, 'Midwest Branch', 'Chicago');


CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    branch_id INT,
    FOREIGN KEY (branch_id) REFERENCES Branch(branch_id)
);


INSERT INTO Employees (employee_id, first_name, last_name, department, salary, branch_id) VALUES
(1, 'James', 'Wilson', 'HR', 45000, 1),
(2, 'Sophia', 'Adams', 'IT', 60000, 1),
(3, 'Micheal', 'Lee', 'Finance', 52000, 2),
(4, 'Fatima', 'Musa', 'Marketing', 48000, 3),
(5, 'Daniel', 'Clark', 'IT', 62000, 2);
