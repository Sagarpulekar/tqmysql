
use studentdb;

select * from student;
select * from course;

select s.sname , s.feestatus
from student s join course c
on s.courseid=c.courseId and c.cname="Python";

# Show student whose faculty name is raksha

select s.sname, s.joiningDate, s.stid, s.feestatus, f.fname
from student s join coursefaculty cs join faculty f
on s.courseid= cs.courseId and cs.facultyId= f.facultyId and f.fname ="Raksha"; 

 # student details whose coursename is java
 
 select s.*, c.cname
 from student s join course c
 on s.courseid= c.courseId and c.cname="java";
 
 # student details whose course duration is 4 months
 select s.* ,c.cname,c.duration
 from student s join course c
 on s.courseid= c.courseId and c.duration="4 months";
 
 
   # Show the course who faculty salary is greater than 60000
 select c.cname, f.fname, f.salary
 from course c join coursefaculty cs join faculty f
 on c.courseId= cs.courseId and cs.facultyId=f.facultyId and f.salary>60000;
 
# Self join 
 
# show the names of have faculty whose salary is greater than than salary of Shuruti
select f1.fname ,f1.salary
from faculty f1 join faculty f2
on f1.salary>f2.salary and f2.fname="Shuruti";


 # Show the names whose experience is greater than jayshree
 select f1.fname, f1.exp
 from faculty f1 join faculty f2
 on f1.exp> f2.exp and f2.fname="jayshree";
  
 
  # show facutly name whose salary is greater than average salary

#> Better with subquery

# Show the course details  where faculty id 5
select c.*
from course c join coursefaculty cf join faculty f
on c.courseId = cf.courseId and cf.facultyId= f.facultyId and f.facultyId=5;

# show the faculty details who are teaching more than one course

select f.*, count(cf.courseId) as TotalCourse
from faculty f join coursefaculty cf
on f.facultyId= cf.facultyId
group by cf.facultyId
having TotalCourse>1;

