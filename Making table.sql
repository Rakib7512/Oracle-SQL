CREATE TABLE em
( emp_id number(6) CONSTRAINT emp_id_pk PRIMARY KEY,
name VARCHAR2(30) not null,
salary number(8,2) not null,
email VARCHAR2 not null,

CONSTRAINT emp_email_unq unique(email)

);



CREATE TABLE emp1287675(
em_id number(6) CONSTRAINT em_id_pk PRIMARY KEY,
ename VARCHAR2(30) not null,
salary number(8,2) not null,
hire_date DATE not null,
address VARCHAR2(30) not null 
);

DESCRIBE emp1287675;

alter TABLE emp1287675 add(
department_name VARCHAR2(10)
);




select *from emp1287675;

INSERT INTO emp1287675 VALUES(1,'Rakib',5000,'12-JAN-2002', 'Dhaka','jee');
INSERT INTO emp1287675 VALUES(2,'Reja',5000,'12-JAN-2002','Khulna','java');
INSERT INTO emp1287675 VALUES(3,'Parbez',5000,'12-JAN-2002','Rajshahi','nt');
INSERT INTO emp1287675 VALUES(4,'Parbez',5000,'12-JAN-2002','Rajshahi', 'jee');

