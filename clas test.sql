
SELECT LAST_NAME, SALARY
FROM employees
WHERE salary NOT BETWEEN 5000 AND 12000;


SELECT LAST_NAME, department_id
FROM employees
WHERE department_id = 20
OR DEPARTMENT_ID=50
order by last_name;


SELECT LAST_NAME AS"Employees", salary as "Monthly salary"
FROM employees
WHERE salary BETWEEN 5000 AND 12000 
AND department_id= 20 
OR department_id= 50;




SELECT LAST_NAME, SALARY,commission_pct
FROM employees
order by SALARY desc,LAST_NAME desc, commission_pct desc;
  
  
  



SELECT LAST_NAME, SALARY,commission_pct
FROM employees
WHERE commission_pct =0.20;


SELECT employee_id, LAST_NAME, SALARY,salary+(salary*.155) as"New Salary"
FROM employees;





