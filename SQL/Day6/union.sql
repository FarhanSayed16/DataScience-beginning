-- Concept of UNION in SQL:
-- The UNION operator is used to combine the result sets of two or more SELECT statements.
-- Each SELECT statement must have the same number of columns and compatible data types.
-- UNION removes duplicate rows by default.

-- 1. Create tables for the example
CREATE TABLE students_2024 (
    name VARCHAR(100)
);

CREATE TABLE students_2025 (
    name VARCHAR(100)
);

-- 2. Insert sample data into both tables
INSERT INTO students_2024 (name) VALUES 
('Amit'), 
('Priya'), 
('Rahul');

INSERT INTO students_2025 (name) VALUES 
('Priya'), 
('Sneha'), 
('Vikas');

-- 3. Use UNION to get all unique student names from both years
SELECT name FROM students_2024
UNION
SELECT name FROM students_2025;

-- The result will be:
-- Amit
-- Priya
-- Rahul
-- Sneha
-- Vikas

-- Note: If you want to include duplicates, use UNION ALL instead of UNION:
-- SELECT name FROM students_2024
-- UNION ALL
-- SELECT