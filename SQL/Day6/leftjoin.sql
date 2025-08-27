-- Example of FULL JOIN from start to end with extra columns

-- 1. Create tables
CREATE TABLE departments (
    id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL,
    location VARCHAR(100)
);

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    salary DECIMAL(10,2),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

-- 2. Insert sample data into departments
INSERT INTO departments (department_name, location) VALUES
('HR', 'Building A'),
('Finance', 'Building B'),
('Engineering', 'Building C'),
('Marketing', 'Building D'),
('Support', 'Building E');

-- 3. Insert sample data into employees
INSERT INTO employees (name, email, salary, department_id) VALUES
('Alice', 'alice@email.com', 60000.00, 1),
('Bob', 'bob@email.com', 55000.00, 2),
('Charlie', 'charlie@email.com', 70000.00, 3),
('David', 'david@email.com', 62000.00, 1),
('Eva', 'eva@email.com', 50000.00, 4),
('Frank', 'frank@email.com', 48000.00, NULL);

-- 4. Perform FULL JOIN to get all employees and all departments, including those without a match
-- Note: MySQL does not support FULL OUTER JOIN directly. Use UNION of LEFT and RIGHT JOIN.

SELECT 
    employees.id AS employee_id,
    employees.name AS employee_name,
    employees.email,
    employees.salary,
    departments.id AS department_id,
    departments.department_name,
    departments.location
FROM employees
LEFT JOIN departments ON employees.department_id = departments.id

UNION

SELECT 
    employees.id AS employee_id,
    employees.name AS employee_name,
    employees.email,
    employees.salary,
    departments.id AS department_id,
    departments.department_name,
    departments.location
FROM employees
RIGHT JOIN departments ON employees.department_id = departments.id;

-- output will be:
-- employee_id  employee_name  email             salary   department_id  department_name  location
-- 1            Alice          alice@email.com   60000.00 1              HR               Building A
-- 2            Bob            bob@email.com     55000.00 2              Finance          Building B
-- 3            Charlie        charlie@email.com 70000.00 3              Engineering      Building C
-- 4            David          david@email.com   62000.00 1              HR               Building A
-- 5            Eva            eva@email.com     50000.00 4              Marketing        Building D
-- NULL         Frank          frank@email.com   48000.00 NULL           NULL             NULL
-- NULL         NULL          NULL              NULL     5              Support          Building E