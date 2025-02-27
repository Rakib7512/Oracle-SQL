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









