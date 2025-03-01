select first_name
from employees
where first_name like 'A%';



select first_name,salary,department_id
from employees
where department_id=90 and salary>10000;




select first_name,salary,department_id
from employees
where department_id=90 or salary>20000;



select first_name,salary,department_id, hire_date
from employees
where hire_date in('17-JUN-03','14-JAN-07');






select last_name,salary,department_id, hire_date
from employees
where department_id=60
or department_id=80
and salary > 10000
order by last_name desc, hire_date;




select distinct salary
from employees
order by salary desc
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;


select distinct salary
from employees
order by salary desc
FETCH first 5 ROWS ONLY;




select last_name
 from employees

where substr(last_name,2,2)='an';





select last_name
 from employees

where substr(last_name,-3)='aan';


select salary
from employees
where salary>=&salary
order by salary ;


select last_name
from employees
where substr(last_name,2,2)='ar';

select last_name
from employees
where last_name LIKE '%an%';


SELECT SUBSTR('RakibIslam', 4,4)
FROM dual;

SELECT round(45.9245,3), round(45.923,0),round(54,-2),round(44,-1),round(55,-1)
from dual;



SELECT trunc(45.923,3),trunc(45.923),trunc(45.923,-1)
FROM dual;

select sysdate
from dual;



select SESSIONTIMEZONE, CURRENT_DATE
from dual;





SELECT LAST_NAME, SALARY














