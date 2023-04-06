# Foreign key

create database products;
use products;

create table supplier(
supid int,
firstname varchar(30) not null,
lastname varchar(30),
phonenumber bigint not null,
email varchar(50),
primary key (supid));

desc supplier;

select * from supplier;

create table item(
itemid int primary key,
itemName varchar(30),
cost float,
supid int,
foreign key (supid) references supplier(supid));

desc item;

insert into item
values(1,"Pendrive",670.0, 102);

insert into item
values(2,"HardDisk",950, 104);

insert into item
values
(3,"WebCamera",5000,103),
(4,"WebCamera",6700,104),
(5,"HeadPhones",540,101);

select * from item;

# doesnot allow with sup id 106 as it is not present
insert into item
values(6,"Charger",1000,106);

delete from supplier 
where supid= 105;



select * from supplier;

delete from supplier 
where supid= 104;

use studentdb;

select * from student;

select * from course;

alter table student
add foreign key (courseid) references course(courseId);

alter table coursefaculty
add foreign key (courseid) references course(courseid);

alter table coursefaculty
add foreign key (facultyid) references faculty(facultyid);

alter table coursefaculty
drop foreign key coursefaculty_ibfk_2;

alter table coursefaculty
add constraint fk_faculty
foreign key (facultyid) references faculty(facultyid);

# restrict > by default : not allowed
delete from course
where courseId=105;

alter table student 
drop foreign key fk_course1;

alter table student
add constraint fk_course1
foreign key (courseid) references course(courseid)
on delete set null;

delete from course
where courseId=105;






