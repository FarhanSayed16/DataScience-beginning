-- Views in SQL

-- What is a View?
-- A view is a virtual table based on the result of a SQL query.
-- It does not store data itself but displays data stored in other tables.
-- Views can simplify complex queries, enhance security, and present data in a specific format.

-- Syntax to create a view:
-- CREATE VIEW view_name AS
-- SELECT columns
-- FROM table
-- WHERE condition;

-- Example: Create a view for high earning employees

-- 1. Create the base table
CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    salary DECIMAL(10,2),
    department VARCHAR(100)
);

-- 2. Insert sample data
INSERT INTO employees (name, salary, department) VALUES
('Alice', 60000.00, 'HR'),
('Bob', 55000.00, 'Finance'),
('Charlie', 70000.00, 'Engineering'),
('David', 62000.00, 'HR'),
('Eva', 50000.00, 'Marketing');

-- 3. Create a view for employees with salary above 60000
CREATE VIEW high_earners AS
SELECT name, salary, department
FROM employees
WHERE salary > 60000;

-- 4. Query the view
SELECT * FROM high_earners;

-- 5. Update through a view (if allowed)
-- Example: Update salary using the view
-- UPDATE high_earners SET salary = 75000 WHERE name = 'Charlie';

-- 6. Drop the view
-- DROP VIEW high_earners;

-- Notes:
-- - Views can be queried like tables.
-- - Some views are updatable, but not all (depends on the SQL dialect and view definition).
-- - Views help with security by restricting access to specific