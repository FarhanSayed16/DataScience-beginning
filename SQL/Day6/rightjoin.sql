-- Example of INNER JOIN from start to end

-- 1. Create tables
CREATE TABLE departments (
    id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL
);

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

-- 2. Insert sample data into departments
INSERT INTO departments (department_name) VALUES
('HR'),
('Finance'),
('Engineering'),
('Marketing');

-- 3. Insert sample data into employees
INSERT INTO employees (name, department_id) VALUES
('Alice', 1),
('Bob', 2),
('Charlie', 3),
('David', 1),
('Eva', 4);

-- 4. Perform INNER JOIN to get employee names with their department names
SELECT employees.name, departments.department_name
FROM employees
INNER JOIN departments 
ON employees.department_id = departments.id;

--output will be:
-- Alice      HR
-- Bob        Finance
-- Charlie    Engineering
-- David      HR
-- Eva       Marketing

-- left join added:
-- for left join to get all employees with their department names, including those without a department
SELECT employees.name, departments.department_name
FROM employees
LEFT JOIN departments
ON employees.department_id = departments.id;

-- output will be:
-- Alice      HR
-- Bob        Finance
-- Charlie    Engineering
-- David      HR
-- Eva       Marketing

-- right join added:
-- for right join to get all departments with their employee names, including those without employees
SELECT employees.name, departments.department_name
FROM employees
RIGHT JOIN departments
ON employees.department_id = departments.id;

-- output will be:
-- Alice      HR
-- Bob        Finance
-- Charlie    Engineering
-- David      HR
-- Eva       Marketing
-- NULL       Marketing