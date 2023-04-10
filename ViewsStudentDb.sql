#View in studentdb

create view fees_issue as
select stid,sname,phoneNo,feestatus
from student
where feestatus in("HalfPaid","NotPaid");

select * from fees_issue;

drop view fees_issue;

#change id reflected
update student
set feestatus="Paid"
where stid=6;

#join

create view student_in_course as
select c.courseId, c.cname, count(s.stid) 
from student s join course c
on s.courseid= c.courseId
group by s.courseid;


alter view student_in_course as
select c.courseId, c.cname,c.fees, count(s.stid) as TotalStudent
from student s join course c
on s.courseid= c.courseId
group by s.courseid;

select * from student_in_course;




