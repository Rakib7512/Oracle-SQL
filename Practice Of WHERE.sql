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



select first_name,salary,department_id, hire_date
from employees
where hire_date in('17-JUN-03','14-JAN-07');


