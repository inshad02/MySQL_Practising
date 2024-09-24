create database employee;
use employee;
create table Employee(
						employee_id int auto_increment,
                        first_name varchar(100),
                        last_name varchar(100),
                        salary int,
                        department varchar(100),
                        primary key(employee_id)
);
insert into  Employee values(1,"Manu","A",25000,"Quality");
insert into  Employee values(2,"Anu","A",26000,"Quality");
insert into  Employee values(3,"Abu","k",28000,"Service"),(4,"Raju","k",24000,"Service"),(5,"Appu","k",20000,"Service");
select * from Employee;
alter table Employee add date_of_joining date;
update Employee set salary=60000 where department='IT';