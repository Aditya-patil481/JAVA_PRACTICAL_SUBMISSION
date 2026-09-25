
CREATE DATABASE company;

USE company;
CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    manager_id INT,
    designation VARCHAR(50),
    salary INT,
    FOREIGN KEY (manager_id) REFERENCES employee(emp_id)
);

INSERT INTO employee VALUES
(1, 'Rahul', NULL, 'CEO', 150000),
(2, 'Amit', 1, 'Manager', 100000),
(3, 'Priya', 1, 'Manager', 100000),
(4, 'Rohan', 2, 'Developer', 60000),
(5, 'Sneha', 2, 'Developer', 55000),
(6, 'Vikas', 3, 'Tester', 50000),
(7, 'Neha', 3, 'Developer', 60000);

SELECT 
    e.emp_id,
    e.emp_name AS employee,
    e.designation,
    m.emp_name AS manager
FROM employee e
LEFT JOIN employee m
ON e.manager_id = m.emp_id;