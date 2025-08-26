--concept is joints in sql
--types of joints in sql
--1. INNER JOIN
--2. LEFT JOIN
--3. RIGHT JOIN
--4. FULL OUTER JOIN
--5. CROSS JOIN


-- explanation of each type of join
-- 1. INNER JOIN: Returns records that have matching values in both tables.
-- 2. LEFT JOIN: Returns all records from the left table and the matched records from the right table.
-- 3. RIGHT JOIN: Returns all records from the right table and the matched records from the left table.
-- 4. FULL OUTER JOIN: Returns all records when there is a match in either left or right table records.
-- 5. CROSS JOIN: Returns the Cartesian product of the two tables.

-- Note: Joins are used to combine rows from two or more tables based on a related column between them.

-- example of each type of join

-- INNER JOIN
SELECT *
FROM table1
INNER JOIN table2 ON table1.id = table2.id;

-- LEFT JOIN
SELECT *
FROM table1
LEFT JOIN table2 ON table1.id = table2.id;

-- RIGHT JOIN
SELECT *
FROM table1
RIGHT JOIN table2 ON table1.id = table2.id;

-- FULL OUTER JOIN
SELECT *
FROM table1
FULL OUTER JOIN table2 ON table1.id = table2.id;

-- CROSS JOIN
SELECT *
FROM table1
CROSS JOIN table2;
