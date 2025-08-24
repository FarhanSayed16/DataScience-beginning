set sql_safe_updates=0;
update student
set age = 25
where age = 20;
select *from student;

-- set is used to allow updates to be made without a WHERE clause
set sql_safe_updates=1; -- for getting back into safe mode