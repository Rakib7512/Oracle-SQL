

select last_name, salary, department_name,location_id,country_name
FROM employees 
NATURAL JOIN departments 
NATURAL JOIN countries
fetch first 5 rows only;




select e.first_name, d.department_id,l.street_address,l.city, c.country_name
FROM employees e
JOIN departments d on e.department_id=d.department_id
JOIN locations l on l.location_id=d.location_id
JOIN countries c on l.country_id=c.country_id;
