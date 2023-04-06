
#Q1. Show all the student whose course id is either 103,102;

select *from student 
where courseid in (103,102);

#Q2. Show student name whose name starts with s

select sname from student
where sname like 's%';

#Q3. Show all the faculty whose email id is not null

select * from faculty
where email is not null;

#Q4. Show the number of student in each course

select courseid, count(*) as Total
from student
group by courseid;

#Q5. Show the numbers of courses according to duration

select duration, count(*) as 'TotalCourse'
from course
group by duration;

#Q6. Increase the fees of all courses by 10%

update course
set fees= fees+(0.1*fees);

select * from course;

#Q7. Increase the salary of faculty by 20% whose experience is greater than 5 years

select * from faculty;

update faculty
set salary= salary+(0.2*salary)
where experience>=5;

#Q8. Delete the course communication

delete from course
where cname="communication";


#Q9. Delete the students who has not paid the fees
select * from student;
delete from student 
where feestatus="NotPaid";


#Q10.Show the faculty in desc order of salary 

select * from faculty
order by salary desc; 


#Q11. Show the student in asc order of course id and if the course is same then desc order of joining date
select * from student
order by courseid asc, joiningDate desc;

#q12. Show the total student in each course in asc order
select courseid, count(*) as Total
from student
group by courseid
order by total asc;

#q13. Add the column joining date in faculty

alter table faculty
add column joiningdate date;

desc faculty;

#q14. Change the column to exp of experience

alter table faculty
rename column experience to exp;

select distinct(courseid)
from student;

select count(distinct(courseid))
from student;

select
avg(salary) as Average,
sum(salary) as Total,
max(salary) as Maximum,
min(salary) as Minimum
from faculty;

# Copy the table completely

create table student_copy
(select * from student);

# copy only structure
create table faculty_copy like faculty;