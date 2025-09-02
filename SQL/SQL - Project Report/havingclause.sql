-- definition
HAVING clause is used to filter records that work on summarized GROUP BY results.   
example: SELECT COUNT(*), country FROM customers GROUP BY country HAVING COUNT(*) > 5;
and it is used with aggregate functions like COUNT, SUM, AVG, etc.

select gender , count(*) as ranking
from student 
group by gender;
having max(ranking) > 5;