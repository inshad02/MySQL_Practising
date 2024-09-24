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
