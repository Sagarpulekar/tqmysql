SELECT * FROM studentdb.student;

# where clause
select * from student;
select sname,courseid
from student;

# show the student whose fees is NotPaid

select sname
from student
where feestatus="NotPaid";

select sname
from student
where feestatus is Null;

select sname
from student
where feestatus is Not Null;

select sname
from student
where feestatus= "Half";

select sname
from student
where feestatus="NotPaid" or feestatus="Half";

select sname
from student
where feestatus in ("NotPaid","Half");

select sname
from student
where feestatus="NotPaid" and courseid=103;

select sname
from student
where not feestatus="NotPaid";

select sname
from student
where feestatus="NotPaid" and (courseid in (103,104));


select sname
from student
where feestatus="NotPaid" and (courseid=103 or courseid=104);

select * from student;



