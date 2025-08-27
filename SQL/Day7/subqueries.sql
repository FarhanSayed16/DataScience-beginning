-- Subqueries in SQL

-- What is a subquery?
-- A subquery is a query nested inside another SQL query.
-- Subqueries can be used in SELECT, INSERT, UPDATE, or DELETE statements.

-- Types of Subqueries:
-- 1. Single-row subquery: Returns only one row.
-- 2. Multiple-row subquery: Returns multiple rows.
-- 3. Multiple-column subquery: Returns multiple columns.
-- 4. Correlated subquery: References columns from the outer query.

-- Syntax of a subquery:
-- SELECT column1 FROM table1
-- WHERE column2 OPERATOR (SELECT column FROM table2 WHERE condition);

-- Example: Find employees who earn more than the average salary

-- 1. Create table
CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    salary DECIMAL(10,2)
);

-- 2. Insert sample data
INSERT INTO employees (name, salary) VALUES
('Alice', 60000.00),
('Bob', 55000.00),
('Charlie', 70000.00),
('David', 62000.00),
('Eva', 50000.00);

-- 3. Single-row subquery example
-- Find employees whose salary is greater than the average salary

SELECT name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary) FROM employees
);

-- 4. Multiple-row subquery example
-- Find employees whose salary matches the highest and second highest salary

SELECT name, salary
FROM employees
WHERE salary IN (
    SELECT DISTINCT salary FROM employees
    ORDER BY salary DESC
    LIMIT 2
);

-- 5. Correlated subquery example
-- Find employees whose salary is greater than at least one other employee

SELECT e1.name, e1.salary
FROM employees e1
WHERE e1.salary > (
    SELECT MIN(e2.salary) FROM employees e2 WHERE e2.id <> e1.id
);

-- End of subquery examples
