
#Write a query to display first day of the month

select subdate( adddate(curdate(), interval 1 day), interval day(curdate()) day);

#Write a query to display last day of the month

select subdate(adddate(curdate(), interval 1 month), interval day(curdate())day);

#Write a query to get the first day of the current year.

#makeDate(year, day of year)

select extract(year from curdate());

select makedate(extract(year from curdate()),1);

#fromDays : Make date from number of days
select from_days(739910);



#Calculate age form birthdate
use payroll;


select ename, birth_date, date_format(from_days(datediff(curdate(),birth_date)),"%Y") +0 as Age
from employee;

use testcoursedb1;

#Show the employee names who have been hired in june

select first_name, last_name
from employees
where monthname(hire_date)="June";

#Write a query to get the years in which more than 2 employees joined.

select date_format(hire_date,"%Y") as HireYear
from employees
group by HireYear
having count(EMPLOYEE_ID)>2;


#Write a query to get first name of employees who joined in 1986.
select first_name
from employees
where year(hire_date)=1986;


#Write a query to get department name, manager name, and salary of the manager for all managers whose experience is more than 5 years.

select d.DEPARTMENT_NAME, e.FIRST_NAME, e.SALARY
from departments d join employees e
on e.MANAGER_ID= d.MANAGER_ID
and (datediff(curdate(),hire_date)/365) >5;

 #Write a query to get employee ID, last name, and date of first salary of the employees.
 
 SELECT employee_id, last_name, LAST_DAY(hire_date) as 'Date of first salary'
  FROM employees;
 
  #Write a query to get first name, hire date and experience of the employees.
select first_name,hire_date,datediff(curdate(),hire_date)/365 'Experience'
  from employees;
