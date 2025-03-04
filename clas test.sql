


select last_name,hire_date
from employees
WHERE hire_date between '01-JAN-02' and '31-DEC-05';


select first_name,hire_date
from employees
where job_id like 'IT_PROG' or job_id LIKE 'SA_MAN';

  
select first_name,hire_date
from employees
where job_id in('IT_PROG','SA_MAN');
  
  
  
  
select employee_id,hire_date
from employees
where hire_date>'01-JAN-08';


select last_name, employee_id
from employees
where  employee_id=150 or employee_id=160;



select last_name, employee_id
from employees
where  employee_id in(150,160)





select first_name, salary,commission_pct,hire_date
from employees
where salary>10000;





