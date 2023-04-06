
#delete from tablename where.........

select * from course;

delete from course 
where courseid=105;

select * from student;

delete from student
where feestatus="NotPaid" and courseid=105;