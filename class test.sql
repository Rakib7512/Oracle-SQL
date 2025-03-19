
--QUESTION NO.1
CREATE TABLE emp(
    eid NUMBER(10) CONSTRAINT emp_eid_pk PRIMARY KEY,
    ename VARCHAR2(30) NOT NULL,
    salary NUMBER(10) NOT NULL,
    hire_date DATE,
    address VARCHAR2(50)
);
SELECT
    * FROM emp;
--QUESTION NO.2
ALTER TABLE emp
    ADD(
    department_id NUMBER(10),
    dept_name VARCHAR2(20)
);
select *from emp;
--QUESTION NO.3
INSERT INTO emp VALUES(1,'Rakib',80000,'01-Jan-20','Dhaka',80,'JEE');
INSERT INTO emp VALUES(2,'Eias prodhan',90000,'01-Jan-21','Dhaka',90,'JEE');
INSERT INTO emp VALUES(3,'Parvej Hossain',60000,'01-Jan-22','Madaripur',80,'JEE');
INSERT INTO emp VALUES(4,'Rohim Khan',40000,'01-Jan-23','Munshiganj',80,'JEE');
INSERT INTO emp VALUES(5,'Atik',70000,'01-Jan-24','Dhaka',90,'JEE');

--QUESTION NO.4
CREATE VIEW emp_view 
AS SELECT ENAME, DEPT_NAME, salary
FROM emp
WHERE department_id = 80;

SELECT * FROM emp_view;




--QUESTION NO.5
CREATE SEQUENCE emp_eid_seq
        START WITH 6
        INCREMENT BY 1
        MAXVALUE 9999
        NOCACHE
        NOCYCLE;
        
        
SELECT emp_eid_seq.NEXTVAL
FROM DUAL;



SELECT
    * FROM emp;
INSERT INTO emp VALUES (emp_eid_seq.nextval,'Abdullah',80000,'01-JAN-08','sangkor','90','NT');

--QUESTION NO.6
INSERT INTO emp(eid,ename,salary,hire_date,address,department_id,dept_name)
SELECT emp_eid_seq.nextval,first_name||' '||last_name,salary,hire_date,country_name,department_id,department_name
FROM employees NATURAL JOIN departments NATURAL JOIN locations NATURAL JOIN countries
WHERE department_id IN(select department_id
                        from employees
                            where salary<4000);

SELECT * FROM emp;