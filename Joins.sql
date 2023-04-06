use products;

select * from item;
select * from supplier;

# inner join > on clause
select *
from item i  join  supplier s
on i.supid=s.supid; 

# when duplicate colmn are not repeated
select *
from item i  join  supplier s
using(supid);


#equi join > where 
select *
from item i, supplier s
where i.supid=s.supid;

# natural join > duplicate colm eliminate
select *
from item i natural join supplier s;

#cross join

select *
from item i cross join supplier s
where i.supid=s.supid;

# non equi join
select *
from item i, supplier s
where i.supid <s.supid;

#Left Outer join

select * from 
item i left join supplier s
on i.supid=s.supid;

#Right Outer Join

select * from 
item i right join supplier s
on i.supid=s.supid;







