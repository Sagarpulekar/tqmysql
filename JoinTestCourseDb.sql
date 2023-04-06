use testcoursedb;

select * from employees;

#Write a query to find the employee id, name (last_name) along with their manager_id, manager name (last_name)

select e.EMPLOYEE_ID, e.LAST_NAME , e.MANAGER_ID as ManagerId, m.LAST_NAME as ManagerName
from employees e join employees m
on e.MANAGER_ID= m.EMPLOYEE_ID;

# Find the employees whose hire date is less than hiredate of Jones

select *
from employees
where LAST_NAME like 'Jones';
# 1987.09.20

select e.FIRST_NAME,e.LAST_NAME, e.HIRE_DATE
from employees e join employees c
on e.HIRE_DATE<c.HIRE_DATE
and  c.LAST_NAME like 'Jones';

#Write a query to display the job history that were done by any employee who is currently drawing more than 10000 of salary

select jh.* , e.SALARY
from job_history jh join employees e
on jh.EMPLOYEE_ID= e.EMPLOYEE_ID
and e.SALARY>10000; 

#Write a query to display the job title and average salary of employees.

select j.JOB_TITLE, avg(salary) as Average
from employees e join jobs j
on e.JOB_ID=j.JOB_ID
group by j.JOB_TITLE;


## Write a query to get the department name and number of employees in the department.

select department_name, count(*) as Total
from employees e join departments d
on e.DEPARTMENT_ID=d.DEPARTMENT_ID
group by e.DEPARTMENT_ID
order by total asc;

#Write a query to display the department ID, department name and manager first name

select d.DEPARTMENT_ID,d.DEPARTMENT_NAME,e.FIRST_NAME 
from departments d join employees e
on d.MANAGER_ID= e.EMPLOYEE_ID;

#Write a query to display the department name, manager name, and city

select d.DEPARTMENT_ID,d.DEPARTMENT_NAME,e.FIRST_NAME, l.CITY 
from departments d join employees e join locations l
on d.MANAGER_ID= e.EMPLOYEE_ID and d.LOCATION_ID = l.LOCATION_ID;

#Write a query to display the job title and average salary of employees.

select job_title, avg(salary) as AverageSal
from employees e join jobs j
on e.JOB_ID= j.JOB_ID
group by j.job_id;

