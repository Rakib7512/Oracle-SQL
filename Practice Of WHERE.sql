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







select last_name,hire_date
from employees
WHERE hire_date like '%02' OR hire_date like '%05'
order by 2;

select first_name,hire_date
from employees
where job_id like 'IT_PROG' or job_id LIKE 'SA_MAN';


select employee_id,hire_date
from employees
where hire_date<'01-JAN-08';


select last_name, employee_id
from employees
where  employee_id=150 or employee_id=160;



select first_name, salary,commission_pct,hire_date
from employees
where salary>10000;





SELECT LAST_NAME, SALARY,concat('BDT',
substr(
to_char(salary*40,'$9,999,999.00'),
instr(
to
_char
FROM employees;



SELECT LAST_NAME, commission_pct, nvl(commission_pct,0)
FROM employees;




SELECT LAST_NAME, commission_pct, nvl2(commission_pct,commission_pct,0)
FROM employees;


SELECT LAST_NAME,salary, commission_pct

FROM employees;




select last_name,job_id, salary,

case job_id when 'IT_PROG' then 1.10*salary
when 'ST_CLEARK' then 1.15*salary
else salary end "NEW Salary"
from employees;


select last_name,job_id, salary,
DECODE(
'IT_PROG, 1.10',
'ST_CLEARK,1.15',
eals salary end 
)
from employees;




SELECT department_id, MAX(AVG(SALARY))
FROM employees
group by department_id
order by 2
FETCH FIRST 1 ROWS ONLY;


