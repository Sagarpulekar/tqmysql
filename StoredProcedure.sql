/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `getDeptWiseSalary`( in did int,out totalSal int)
BEGIN
 select sum(salary) into totalSal
 from employees
 group by department_id
 having department_id=did;

END
*/

set @totalSal=0;
call getDeptWiseSalary(90, @totalSal);

select @totalSal;

/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `highestSalaryDept`(in did int, out highSalary int)
BEGIN

 select max(salary) into  highSalary
 from employees
 group by department_id
 having department_id=did;


END
*/

 select max(salary) as highSalary
 from employees
 group by department_id
 having department_id=90;

set @highest=0;

call highestSalaryDept(90, @highest);

select @highest;

/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `noOfEmployeesDept`()
BEGIN

select department_id, count(*) as EmployeeCount
from employees
group by department_id;

END
*/


 call noOfEmployeesDept;
 
 # get employee name, salary and id of the id provided
 
 /*
CREATE DEFINER=`root`@`localhost` PROCEDURE `getEmployeeDetails`(inout id int, out ename varchar(20), out esalary float(8,2))
BEGIN
select employee_id, first_name,salary 
from employees
where employee_id= id;
END
*/

set @id=103;
set @ename='';
set @esalary=0.00;

call getEmployeeDetails(@id,@ename,@esalary);

# Stored procedure for employee id, fisrtname, salary and department name for the employee having salary greater than  input salary

select experience(hire_date)
from employees;

/*
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateSalary`(in exp int)
BEGIN

update employees
set salary = salary+(0.2*salary)
where (year(curdate())- year(hire_date))> exp;

END
*/

call updateSalary(30);

select * from employees
where (year(curdate())- year(hire_date))> 30;

# Stored procedure for employee id, fisrtname, salary and department name for the employee having salary greater than  input salary
#and department name
