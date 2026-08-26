use aysha;
create table employee(EMPNO int primary key,ENAME varchar(25),JOB varchar(25),MGR varchar(30),HIREDATE date,SAL int,COMM varchar(10),DEPTNO int);
truncate table employee;
alter table employee
modify HIREDATE date;
insert into employee(EMPNO,ENAME,JOB,MGR,HIREDATE,SAL,COMM,DEPTNO)
values(7369,"SMITH","CLERK",7902,"1980-12-17",800,NULL,20),
(7499,"ALLEN","SALESMAN",7698,"1981-02-20",1600,300,30),
(7521,"WARD","SALESMAN",7698,"1981-02-22",1250,500,30),
(7566,"JONES","MANAGER",7839,"1981-04-02",2975,NULL,20),
(7654,"MARTIN","SALESMAN",7698,"1981-09-28",1250,1400,30),
(7698,"BLAKE","MANAGER",7839,"1981-05-01",2850,NULL,30),
(7788,"SCOTT","ANALYST",7566,"1981-06-09",2450,NULL,10),
(7839,"KING","PRESIDENT",NULL,"1981-11-17",5000,NULL,10),
(7844,"TURNER","SALESMAN",7698,"1981-09-08",1500,0,30),
(7876,"ADAMS","CLERK",7788,"1987-05-23",1100,NULL,20),
(7900,"JAMES","CLERK",7698,"1981-12-03",950,NULL,30),
(7902,"FORD","ANALYST",7566,"1981-12-03",3000,NULL,20),
(7934,"MILLER","CLERK",7782,"1981-01-23",1300,NULL,10);

select * from employee;
select EMPNO,ENAME,SAL from employee;
select distinct job from employee;
select ENAME, SAL * 12 as annual_salary from employee;
select * from employee where DEPTNO = 10;
select ENAME,JOB from employee where JOB="CLERK";
select ENAME from employee where ENAME like "s%";
select ENAME from employee where ENAME like "_L%";
select ENAME from employee where ENAME like "%AR%";
select * from employee where (HIREDATE)= 1981;
select ENAME,SAL from employee where SAL>2500;
select * from employee where JOB<>"MANAGER";
select * from employee where COMM is not null;
select ENAME from employee where DEPTNO=30 and "SALESMAN";
select ENAME from employee where job in("ANALYST","CLERK");
select ENAME from employee where SAL between 1000 and 2000;
select lower(ENAME) from employee;
select substr(ENAME,1,3)from employee;
select length(ENAME) from employee;
select round(SAL,3) from employee;
select mod(SAL,1000)from employee;
select now();
select year(HIREDATE) from employee;
select monthname(HIREDATE) from employee;
select 2025-extract(year from HIREDATE) as years from employee;
create table department(deptno int primary key, dename varchar (45), loc varchar(35));
insert into department(deptno, dename, loc)
values(10, "accounting", "newyork"),
(20, "reaserch", "dallas"),
(30, "sales", "chicago"),
(40, "operations", "boston");
select * from department;
alter table department add  pincode int;
insert into department(deptno,dename,loc)
values(50,"HR","houseton");
select * from department;
set sql_safe_updates=0;
update department set loc = "atlanta" where dename ="sales";
select * from department;




