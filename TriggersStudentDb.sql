#tRIGGERS in Studentdb

# Add number of student in each course

alter table course
add column scount int
after fees;

# update the scount with already present data

update course
set scount= (select count(*)
             from student 
             group by courseid
             having course.courseid= student.courseid);
       
  #Course table
  
  #Before Insert : Doesnot allow fees less than 20000
  
  /*
  CREATE DEFINER=`root`@`localhost` TRIGGER `course_BEFORE_INSERT` BEFORE INSERT ON `course` FOR EACH ROW BEGIN
  if new.fees<20000
  then
   signal sqlstate '26000'
   set message_text="Fees should be greater than 20000" ;
   end if;

END
*/

insert into course
values(105,"Cloud computing","3 months",15000,0);

insert into course
values(105,"Cloud computing","3 months",21000,0);


#In Student table

#After Insert : update the course : increase the scount

/*
CREATE DEFINER=`root`@`localhost` TRIGGER `student_AFTER_INSERT` AFTER INSERT ON `student` FOR EACH ROW BEGIN
 update course
 set scount= scount+1
 where courseid= new.courseid;

END
*/



select * from course;

select * from student;

insert into student 
values(14,"Priya","pr@gmail.com",9877665544,101,"Paid","2023-02-20");

# Creating logtable

drop table logtable;

create table logtable(
logid int primary key auto_increment, 
actiontask varchar(30),
doneon date,
details varchar(100)
);

insert into logtable (actiontask,doneon,details)
values("None","2023-04-07","No action done");

#Before update: enterind data in logtable

update course
set fees= 30000
where courseid= 102;

select * from course;

select * from logtable;

#Before Deleted
/*CREATE DEFINER=`root`@`localhost` TRIGGER `course_BEFORE_DELETE` BEFORE DELETE ON `course` FOR EACH ROW BEGIN
 if exists(select courseid from student where courseid=old.courseid)
 then 
 signal sqlstate '46000'
 set message_text="Student exists in this course... cannot delete it";
 end if;

END
*/

#After Delete

/*
CREATE DEFINER=`root`@`localhost` TRIGGER `course_AFTER_DELETE` AFTER DELETE ON `course` FOR EACH ROW BEGIN
insert into logtable(actiontask,doneon,details)
values("CourseDeleted",now(),concat(old.courseid,old.cname,old.duration,old.fees," "+old.scount));

END
*/

delete from course
where courseid= 101;


delete from course
where courseid= 106;

select * from logtable;


