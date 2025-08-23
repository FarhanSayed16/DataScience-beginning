-- used aggregate functions
-- to calculate average, minimum, maximum and count

select avg(age) as average_age from student;
select min(age) as minimum_age from student;
select max(age) as maximum_age from student;
select count(*) as total_students from student;