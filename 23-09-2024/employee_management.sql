create database employee2;
use employee2;
create table Employee(
	id integer primary key,
	name varchar(30) not null,
	department varchar(30),
	salary integer);
insert into Employee values(1,'Aman','IT',50000),(2,'Anand','accounts',56000),
(3,'Jacob','IT',45000),(4,'John','testing',150000);
	
select * from Employee where department="IT";
select distinct id,name,department from Employee ;
select id,name,salary from Employee order by name asc;
select * from Employee limit 2;
select * from Employee order by name limit 4;
select * from Employee where salary<=50000 order by name desc limit 3;
select * from Employee where name like "a%";
select * from Employee where department in("it","testing");
select * from Employee where salary between 10000 and 50000;
select * from Employee where name regexp  '^[a]';