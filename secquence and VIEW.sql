create SEQUENCE emp1287675_Eid_seq
start WITH 101
increment by 1
maxvalue 99999
Nocache 
nocycle;


select *from emp1287675;

INSERT INTO emp1287675 VALUES (emp1287675_Eid_seq.nextval,'shihab',2000,'02-FEB-09','','java');


select emp1287675_Eid_seq.currval








create view emp90
as select employee_id, last_name,salary
from employees
where department_id=90;



SELECT
    * FROM emp90;
    
    
    
    
    
create table emp0011(
e_id number(6)CONSTRAINT e_id_pk PRIMARY KEY,
e_name varchar2 (30)not null,
salary number(6)not null,
hire_date date not null,
address varchar2(30) null);




alter table emp0011 add(
department_name number (6)
);



    
INSERT INTO emp0011 VALUES (1,'Rakib',5000,'01-JAN-08','sangkor','JEE');
INSERT INTO emp0011 VALUES (2,'Atiq',3000,'01-JAN-08','sangkor','NT');
INSERT INTO emp0011 VALUES (3,'Sakib',8000,'01-JAN-08','sangkor','DDD');


create view emp_je
as select E_NAME,DEPARTMENT_NAME,SALARY
from emp0011
where DEPARTMENT_ID='JEE';


create SEQUENCE emp0011_Eid_seq
start WITH 101
increment by 1
maxvalue 99999
Nocache 
nocycle;

SELECT
    * FROM emp0011;
INSERT INTO emp0011 VALUES (emp0011_Eid_seq.nextval,'Abdullah',8000,'01-JAN-08','sangkor','JEE','80');



select job_id
from employees
where department_id in(select department_id
                from employees
                where salary>1000);


select salary
                from employees
                where salary>1000;


SELECT
    * FROM emp0011;
