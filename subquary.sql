


SELECT last_name, job_id,salary
FROM employees
where hire_date>(SELECT hire_date
FROM employees
where last_name='Ernst')
and salary>(SELECT salary
from employees
where last_name='Ernst');



SELECT employee_id,last_name,salary
from employees
where salary>(select avg(salary)
from employees
)
order by 3;




SELECT employee_id,last_name
from employees
where department_id in (select department_id
FROM employees  
where last_name like '%u%');




SELECT last_name,employee_id,job_id
from employees e
where e.department_id= (select d.department_id
FROM departments d
where e.department_id=d.department_id
and location_id=1700);




SELECT last_name,employee_id,job_id
from employees
WHERE department_id in(SELECT department_id
from departments
where location_id=1700)

order by 1;



SELECT last_name,salary
from employees 
WHERE last_name in (SELECT last_name

from departments
where last_name = 'King');





SELECT last_name,salary
from employees 
WHERE manager_id in (SELECT employee_id 
from employees
where last_name = 'King');

    