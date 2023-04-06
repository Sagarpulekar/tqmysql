SELECT * FROM company.employee;

Select * from department;

select e.EmpName,d.DeptName,d.Location
from department d, employee e
where d.DeptID= e.DeptID;

select count(*) as Empcount, department.DeptName
from employee inner join department
on employee.DeptID=department.DeptID
group by department.DeptName;