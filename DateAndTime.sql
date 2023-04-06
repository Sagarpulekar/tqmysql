
#Date and Time

#Current Date

select curdate();

#AddDate(date, interval)

select adddate(curdate(),interval 10 day);

select adddate(curdate(),interval 1 month);


#Select month from curdate

select dayofmonth(curdate()); # day

select month(curdate());

select monthname(curdate());

# Add time

select addtime("12:45:00","1:00:0");

select current_time();

#subtract date



select date_sub(curdate(), Interval 1 day);

#dateDiff

select datediff(curdate(),"2023-01-31"); # returns number of days

use testcoursedb1;

# show the first_name, id and experience of the employee in the company

select EMPLOYEE_ID, FIRST_NAME, datediff(curdate(),hire_date)/365 as Experience
from employees;

#Date Format

select date_format(curdate(),"%d/%m/%Y");

select date_format(curdate(),"%W %D %M %Y");


