
select worker.last_name emp, manager.last_name mgr
FROM employees worker join  employees manager
ON 
(worker.manager_id=manager.employee_id);


select e.last_name, d.department_id,d.department_name
from employees e FULL OUTER join departments d
on (e.department_id=d.department_id);



