/*CREATE DEFINER=`root`@`localhost` FUNCTION `maxNumber`(a int, b int) RETURNS int
    DETERMINISTIC
BEGIN
 if(a>b)
  then return a;
  else
  return b;
  end if;
END*/


select maxNumber(7,4);

/*CREATE DEFINER=`root`@`localhost` FUNCTION `addNumbers`(a int, b int) RETURNS int
    DETERMINISTIC
BEGIN
declare ans int;
set ans= a+b;
return ans;
END
*/

select addNumbers(5,6);

/*CREATE DEFINER=`root`@`localhost` FUNCTION `powerNumber`(base int, pow int) RETURNS int
    DETERMINISTIC
BEGIN
 set @ans=1;
 while(pow>=1)
  do
   set @ans= @ans*base;
    set pow=pow-1;
  end while;  
RETURN @ans;
END
*/

select powerNumber(3,4);

/*
CREATE DEFINER=`root`@`localhost` FUNCTION `experience`(hiredate date) RETURNS int
    DETERMINISTIC
BEGIN

RETURN (year(curdate())-year(hiredate));
END
*/

select employee_id, FIRST_NAME, experience(hire_date) as 'Experience'
from employees;

/*
CREATE DEFINER=`root`@`localhost` FUNCTION `votecheck`(birthdate date) RETURNS char(1) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
 set @age= year(curdate())-year(birthdate);
 if(@age>=18)
 then return 'Y';
 else
 return 'N';
 end if;

END
*/

use payroll;

select empid, ename, votecheck(birth_date) as 'VoteEligibility'
from employee;