use studentdb;

# Table faculty
create table faculty(
facultyId int primary key,
fname varchar(30) not null,
phoneNo bigint not null,
salary float,
email varchar(30));

drop table faculty;

describe faculty;

describe course;

desc course;

create table student(
stid int,
sname varchar(30) not null,
email varchar(50) ,
phoneNo bigint not null,
courseid int,
feestatus varchar(10),
primary key (stid) );

drop table student;

show databases;

drop database hr2;

insert into faculty 
values (1, "Medha",9875578905,900000,"medha@gmail.com");

insert into faculty 
values (2, "Kirab",9177800112,72000.50,"kiran@gmail.com");

select * from faculty;

insert into faculty 
values (3, "Jayshree",8900675467,68000.5067,"jayshree@gmail.com");

select fname,salary 
from faculty;

insert into faculty
values(5,"Khadija",8977665540,34000,"khadija@gmail.com"),
(6,"Raksha",9006789760,45000,"raksha@gmail.com");

insert into faculty 
values (4, "Shuruti",9873366895,55000.85,"shruti@gmail.com");

alter table course
drop column facultyId;

desc course;

alter table course
modify fees float;

alter table course
drop column duration;

alter table course 
add column dur varchar(10);

alter table course
rename column dur to duration;

alter table course
change column cduration duration varchar(30);

alter table course
drop column duration;

alter table course
add column  duration varchar(30)
after cname;

insert into course
values(101,"Java","3 months",30000);

select * from course;

# delete only the values
truncate table course;

alter table course
rename to courses;

alter table courses
rename to course;

insert into coursefaculty
values(1,101,1),
(2,102,3),
(3,102,4),
(4,103,5),
(5,103,6),
(6,104,2),
(7,104,6),
(8,105,1);


