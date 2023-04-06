
select sname, feestatus
from student
where courseid= (select courseid
                 from course
                 where cname="python");
                 
 #single values: =
 #single row: >,<,>=,<=
 # more than one value : in
 
 select sname, feestatus
from student
where courseid= (select courseid
                 from course
                 where cname="python") and feestatus="HalfPaid";
                 
# Show student whose faculty is same

select *
from student
where courseid in (select courseid 
                 from coursefaculty
                 where facultyId= (select facultyId
                                    from faculty
                                     where fname="Raksha"));                 
 
 