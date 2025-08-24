-- This is the notes for sql
-- Create Database `any name`
-- drop database `any name`
-- use `any name`
-- show `any name`
-- create table `any name`

-- eg :-
create table college (
id int primary key,
name varchar(50),
age int not null
);


-- drop --- mtlb dlt ---  table kaustubh;
-- drop table kaustubh;

-- datatypes :-
INTEGER (or INT): Whole numbers
SMALLINT: Smaller range of whole numbers
BIGINT: Larger range of whole numbers
DECIMAL(p, s) / NUMERIC(p, s): Fixed-point numbers
FLOAT / REAL / DOUBLE: Floating-point numbers
CHAR(n): Fixed-length character string
VARCHAR(n): Variable-length character string
TEXT: Large variable-length character string
DATE: Date (year, month, day)
TIME: Time (hour, minute, second)
DATETIME / TIMESTAMP: Date and time
BOOLEAN: True/False values
BLOB: Binary Large Object (for images, files, etc.)