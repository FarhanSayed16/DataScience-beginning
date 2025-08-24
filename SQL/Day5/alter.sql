alter table teachers
add column email varchar(100);

alter table courses
add column description text;
drop column description;

alter table courses
add column credits int;
rename column credits to course_credits;
