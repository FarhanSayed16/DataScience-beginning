-- foreign key constraints
-- - A foreign key constraint is a rule that maintains referential integrity between two tables.
-- - It ensures that the value in a column (or a set of columns) in one table matches a value in a column (or a set of columns) in another table.
-- - This relationship is established by defining a foreign key in the child table that references the primary key in the parent table.
-- - Foreign key constraints help prevent actions that would destroy links between tables, such as deleting a row from a parent table that is referenced by a row in a child table.

-- syntax for defining a foreign key constraint:
create table child_table (
    column1 data_type,
    column2 data_type,
    ...
    foreign key (column_name) references parent_table (parent_column_name)
);
- Example:
create table orders (
    order_id int primary key,
    customer_id int,
    order_date date,
    foreign key (customer_id) references customers (customer_id)
);

check constraints on foreign keys:
- To ensure data integrity, you can add constraints when creating or altering tables.
- Common constraints include:
    - NOT NULL: Ensures that a column cannot have a NULL value.
    - UNIQUE: Ensures that all values in a column are different.
    - CHECK: Ensures that all values in a column satisfy a specific condition.
- Example of a check constraint:

create table products (
    product_id int primary key,
    product_name varchar(100) not null,
    price decimal(10, 2) check (price > 0)
);

// check constraints value ke pehle condtion lagake check kar leta hai