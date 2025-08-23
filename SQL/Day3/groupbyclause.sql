select gender, count(*) as total_students
from student
group by gender;

-- to make a group of students by gender
-- group by clause is used to arrange identical data into groups in simple words group by clause is used to arrange same data into groups


-- group by and order by example:

select gender, count(*) as total_students
from student
group by gender
order by total_students desc;
