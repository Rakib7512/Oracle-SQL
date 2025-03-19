
DROP TABLE emp;
--TRUNCATE table emp;
DROP SEQUENCE emp1287675_eid_seq;
select *from EMP;

 INSERT INTO EMP(EID,ENAME,SALARY,HIRE_DATE,ADDRESS,DEPARTMENT_ID,DEPT_NAME)
 SELECT employee_id,first_name||''||last_name,salary,hire_date,country_name,department_id,department_name
from employees natural join departments natural join countries
where department_id in(select department_id
                        from employees
                            where salary<4000);


SELECT*FROM emp;
