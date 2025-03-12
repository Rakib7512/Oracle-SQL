
SELECT employee_id,last_name,job_id,Salary
from employees
WHERE salary < any(  

)






SELECT last_name, manager_id
from employees
WHERE employee_id not in (select manager_id
from employees
where manager_id is not null);



--57. Display details of departments in which the maximum salary
--is more than 10000.

 SELECT * FROM DEPARTMENTS 
 WHERE DEPARTMENT_ID IN( SELECT DEPARTMENT_ID 
 FROM EMPLOYEES
 GROUP BY DEPARTMENT_ID
 HAVING MAX(SALARY)>10000);

- 58. Display details of departments managed by ‘Smith’.



SELECT * FROM DEPARTMENTS 
WHERE MANAGER_ID IN(SELECT EMPLOYEE_ID 
FROM EMPLOYEES 
WHERE FIRST_NAME='SMITH');



60. Display employees who did not do any job in the past.
--SELECT * FROM EMPLOYEES WHERE EMPLOYEE_ID
--NOT IN (SELECT EMPLOYEE_ID FROM JOB_HISTORY

select 
*from employees
where employee_id not in(select employee_id
from job_history
);


63. Display details of manager who manages more than 5 employees.


SELECT FIRST_NAME 
FROM EMPLOYEES
 WHERE EMPLOYEE_ID IN (SELECT MANAGER_ID FROM EMPLOYEES
 GROUP BY MANAGER_ID
 HAVING COUNT(*)>5);

  
    Display the departments into which no employee joined in last two years.
    
    
 SELECT  * FROM DEPARTMENTS
 WHERE DEPARTMENT_ID NOT IN
 ( SELECT DEPARTMENT_ID FROM EMPLOYEES WHERE
 FLOOR((SYSDATE-HIRE_DATE)/365) < 2 );
    
    
    Display details of current job for employees who
--  worked as IT Programmers in the past.


 SELECT * FROM JOBS
 WHERE JOB_ID IN
 (SELECT JOB_ID FROM EMPLOYEES WHERE EMPLOYEE_ID IN
        (SELECT EMPLOYEE_ID FROM JOB_HISTORY WHERE JOB_ID='IT_PROG'))
        
        
        
        

        select department_id,job_id
        from employees
        where employee_id in(select employee_id
        from job_history
        where job_id='IT_PROG');
