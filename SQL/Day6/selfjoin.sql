-- Example of SELF JOIN from start to end

-- 1. Create table
CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES employees(id)
);

-- 2. Insert sample data into employees
INSERT INTO employees (name, manager_id) VALUES
('Alice', NULL),      -- Alice is the CEO, has no manager
('Bob', 1),           -- Bob reports to Alice
('Charlie', 1),       -- Charlie reports to Alice
('David', 2),         -- David reports to Bob
('Eva', 2),           -- Eva reports to Bob
('Frank', 3);         -- Frank reports to Charlie

-- 3. Perform SELF JOIN to get employees and their managers
SELECT 
    e1.name AS employee_name,
    e2.name AS manager_name
FROM employees e1
LEFT JOIN employees e2 ON e1.manager_id