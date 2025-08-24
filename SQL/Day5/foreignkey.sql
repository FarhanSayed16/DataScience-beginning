use students;
create table dept (
   id int primary key,
   name varchar(50)
);
create table teachers (
   id int primary key,
   name varchar(50),
   dept_id int, 
   foreign key (dept_id) references dept(id)
);

-- concept of cascade
create table courses (
   id int primary key,
   name varchar(50),
   teacher_id int,
   foreign key (teacher_id) references teachers(id) on delete cascade
);
-- explanation of cascade
-- When a teacher is deleted, all courses associated with that teacher will also be deleted automatically.