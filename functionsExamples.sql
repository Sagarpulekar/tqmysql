-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: employee
-- ------------------------------------------------------
-- Server version	5.5.44

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `calbonus`(emp_id int , percent float) RETURNS float
BEGIN
	declare tmp float;
    declare bonus float ;
    select salary into tmp 
    from employees where employee_id = emp_id;
    set bonus = tmp * percent ;
    return bonus;

END ;;
DELIMITER ;




DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fourthPower`(num int) RETURNS int(11)
BEGIN

RETURN (num*num*num*num);
END ;;
DELIMITER ;





DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getCustomerCreditLvl`( creditlimit double ) RETURNS varchar(10) CHARSET utf8
BEGIN
	declare lvl varchar(10);
    if creditlimit > 50000 then
		set lvl = 'PLATINUM' ;
    elseif ( lvl <= 50000 and lvl > 10000) then
		set lvl = 'GOLD' ;
	else 
		set lvl = 'SILVER' ;
	end if ;
RETURN lvl;
END ;;
DELIMITER ;




DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getemail`( emp_id int ) RETURNS varchar(60) CHARSET utf8
BEGIN
	declare e_mail varchar(40);
    declare newemail varchar(60);
    select email into e_mail
    from employees where employee_id = emp_id ;
    return concat(e_mail,'@gmail.com');

END ;;
DELIMITER ;




DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `oddeven`(num INT) RETURNS varchar(10) CHARSET utf8
BEGIN
	IF (num %2)  = 0 then
    return "even" ;
    else 
    return "odd";
    end if;

END ;;
DELIMITER ;





DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `sf_past_movie_return_date`(return_date DATE) RETURNS varchar(3) CHARSET utf8
    DETERMINISTIC
BEGIN
     DECLARE sf_value VARCHAR(3);
        IF curdate() > return_date
            THEN SET sf_value = 'Yes';
        ELSEIF  curdate() <= return_date
            THEN SET sf_value = 'No';
        END IF;
     RETURN sf_value;
    END ;;
DELIMITER ;




DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `updateminsal`(starting_value int) RETURNS int(11)
BEGIN
	 declare income int ;
     set income = 0;
     label1 : while starting_value <= 3000 do 
		set income = 3000 + starting_value ;
	  end while label1;
return income;
END ;;
DELIMITER ;
