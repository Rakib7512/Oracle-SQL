
SELECT department_id,round(AVG(salary)),max(salary)
FROM employees
group by department_id
HAVING max(salary)>12000;


select first_name
from employees
where first_name like 'S%';



SELECT AVG(salary)
FROM employees
where job_id like 'SA%';



SELECT first_name ||' '||last_name as"Name", hire_date
FROM employees
ORDER by 2 ;
