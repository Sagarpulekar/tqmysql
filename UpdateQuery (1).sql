#update tableName
# set .....
# where 

select * from faculty;

#increase salary by 10000

update faculty
set salary = salary+10000;

#increase salary by 10% whose experience is greater than 5

update faculty
set salary= salary +(0.1*salary)
where experience>=5;

update faculty
set experience=experience+2
where fname= "Khadija";

select * from student;

update student 
set courseid= 102
where sname like "Vivek";

update student
set courseid= 105
where courseid=106;

select * from course;

update course
set duration="4 months"
where cname="java";

update course
set duration="4 months"
where cname="java" or cname="python";

update course
set fees= fees+5000
where duration= "4 months";

