
--QUESTION NO.1
CREATE TABLE emp1287675(
    eid NUMBER(10) CONSTRAINT emp_eid_pk PRIMARY KEY,
    ename VARCHAR2(30) NOT NULL,
    salary NUMBER(10) NOT NULL,
    hire_date DATE,
    address VARCHAR2(50)
);

SELECT
    * FROM emp1287675;
    
    
--QUESTION NO.2

ALTER TABLE emp1287675
    ADD(
    department_id NUMBER(10),
    dept_name VARCHAR2(20)
);



--QUESTION NO.3
INSERT INTO emp1287675 (eid, ename, salary, hire_date, 
            address, department_id, dept_name)
VALUES (&eid, '&ename', &salary,
        TO_DATE('&hire_date', 'YYYY-MM-DD'),
        '&address', &department_id, '&dept_name');

INSERT INTO emp1287675 (eid, ename, salary, hire_date, address, department_id, dept_name)
VALUES (&eid, '&ename', &salary, TO_DATE('&hire_date', 'YYYY-MM-DD'),
'&address', &department_id, '&dept_name');


--QUESTION NO.4
CREATE VIEW emp1287675_view 
AS SELECT ENAME, DEPT_NAME, salary
FROM emp1287675
WHERE department_id = 80;

SELECT * FROM emp1287675_view;


--QUESTION NO.5
INSERT INTO emp1287675(eid,ename,salary,hire_date,address,department_id,dept_name)
SELECT emp1287675_eid_seq.nextval,first_name||' '||last_name,salary,hire_date,
            country_name,department_id,department_name
FROM employees NATURAL JOIN departments NATURAL JOIN countries
WHERE department_id IN(select department_id
                        from employees
                            where salary<2000);


--QUESTION NO.6
CREATE SEQUENCE emp1287675_eid_seq
        START WITH 100
        INCREMENT BY 1
        MAXVALUE 9999
        NOCACHE
        NOCYCLE;
        
 INSERT INTO emp1287675(eid,ename,salary,hire_date,address,department_id,dept_name)
VALUES(emp1287675_eid_seq.nextval,RANA,500,02-JAN-08,DHAKA,80,JEE);



SELECT
    * FROM EMP1287675;
    
    
    
    
    
    
    DROP TABLE emp1287675;
drop VIEW  emp1287675_view;
DROP SEQUENCE emp1287675_eid_seq;