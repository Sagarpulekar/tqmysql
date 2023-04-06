
select * from item;
select * from supplier;

# show items supplied by rupali and vivek

select * from item 
where supid in (select supid
              from supplier
               where firstname in ('rupali','vivek'));
              
              
  # show  total items supplied by rupali and vivek 
  
  select supid, count(*) as Total
  from item 
   where supid in (select supid
              from supplier
               where firstname in ('rupali','vivek'))
               group by supid;
               
 select * from item 
  where supid >(select supid
              from supplier
               where firstname ="Rupali");   
               
 #>Any,<Any, > all, <All
 #Any : either
 
 select * from item 
  where supid >Any(select supid
              from supplier
               where firstname in("Uday","Vivek")); 
               
  #All : Both
  
  select * from item 
  where supid <All(select supid
              from supplier
               where firstname in("Uday","Vivek")); 
               
 # update the price of items supplied by Vivek
 
 update item
 set cost= cost+200
 where supid= (select supid 
               from supplier
                where firstname="Vivek");
              
select * from item;
              
  
 
 
  
  
               

  
               