alter table student
add column joiningDate date ;

select * from student;

#order by- arranging data

select * from student 
order by joiningDate;

select * from student 
order by joiningDate desc;

select * from faculty;

select * from student 
where courseid=104
order by joiningDate desc;

# Show the student bu asc order of course and is the course is same then desc order of joining date
select * from student 
order by courseid asc, joiningDate desc;

#In clause : Show student who have enrolled in course 103,104

select * from student 
where courseId in(103,104);

select * from student 
where courseId not in(103,104);

select * from faculty;

#between
select * from faculty
where salary between 50000 and 95000;

select * from faculty
where salary not between 50000 and 95000;

#limit
select * from faculty
where salary between 50000 and 95000
order by salary desc limit 2;

select * from student
where courseid= 104 limit 2;

#aggregate function: count, sum, avg, max, min

select sum(salary) as TotalSalary
from faculty;

#Alias name
select count(*) as Count
from student
where courseid=104;

select * from student;

select count(*) as Count
from student;

#coulmn name> doesnot count null values

select count(courseid) as Count
from student;

select avg(salary) as AverageSalary
from faculty;

select max(salary) as MaxSalary
from faculty;

select min(salary) as MinSalary
from faculty;

select avg(salary) as AverageSalary
from faculty
where experience>=5;

#Like

#starts with s
select * from student
where sname like 's%';

#end with a

select * from student
where sname like '%a';

#min 6 charcters starting from s
select * from student 
where sname like 's____%';

select * from student
where sname like '%y%';

select * from student
where sname like 's%a';

select * from student
where courseid like 103;

select * from faculty
order by salary;

select * from faculty
order by salary desc;

# Group By

select * from student;

select  feestatus,count(*)
from student
group by feestatus;

select  courseid,count(*) as Total
from student
group by courseid;



select  courseid,count(*) as Total
from student
group by courseid
order by total desc;


select  courseid,count(*) as Total
from student
where courseid in(103,104)
group by courseid
order by total desc;

select  courseid,count(*) as Total
from student
group by courseid
having courseid in(103,104)
order by total desc;

select * from faculty;

select experience, sum(salary)
from faculty
group by experience;



