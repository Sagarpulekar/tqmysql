#Index in sql

#to view index

show index from faculty;

show index from student;

select * from faculty;

#index create

alter table faculty
add index(phoneNo);

select * from faculty
where phoneNo=8977665540;

#drop

drop index phoneNo on faculty;

create index p1
on faculty(phoneNo);
