
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
select *from emp1287675;
--QUESTION NO.3
INSERT INTO emp1287675 VALUES(1,'Rakib',80000,'01-Jan-20','Dhaka',80,'JEE');
INSERT INTO emp1287675 VALUES(2,'Eias prodhan',90000,'01-Jan-21','Dhaka',90,'JEE');
INSERT INTO emp1287675 VALUES(3,'Parvej Hossain',60000,'01-Jan-22','Madaripur',80,'JEE');
INSERT INTO emp1287675 VALUES(4,'Rohim Khan',40000,'01-Jan-23','Munshiganj',80,'JEE');
INSERT INTO emp1287675 VALUES(5,'Atik',70000,'01-Jan-24','Dhaka',90,'JEE');

--QUESTION NO.4
CREATE VIEW emp1287675_view 
AS SELECT ENAME, DEPT_NAME, salary
FROM emp1287675
WHERE department_id = 80;

SELECT * FROM emp1287675_view;




--QUESTION NO.5
CREATE SEQUENCE emp1287675_eid_seq
        START WITH 6
        INCREMENT BY 1
        MAXVALUE 9999
        NOCACHE
        NOCYCLE;
        

--QUESTION NO.6
INSERT INTO emp1287675(eid,ename,salary,hire_date,address,department_id,dept_name)
SELECT emp1287675_eid_seq.nextval,first_name||' '||last_name,salary,hire_date,country_name,department_id,department_name
FROM employees NATURAL JOIN departments NATURAL JOIN locations NATURAL JOIN countries
WHERE department_id IN(select department_id
                        from employees
                            where salary<4000);

SELECT * FROM emp1287675;

DROP TABLE emp1287675;
drop VIEW  emp1287675_view;
DROP SEQUENCE emp1287675_eid_seq;
