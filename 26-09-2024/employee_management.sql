create database d27_09_24;
use d27_09_24;
create table employee (
						emp_id int not null auto_increment,
						emp_name varchar(100),
                        dept_id int,
                        salary double,
                        hire_date date,
                        email varchar(100),
                        primary key (emp_id),
                        foreign key (dept_id) references department(dept_id)
                        );

create table department (
						dept_id int not null auto_increment,
                        dept_name varchar(100),
                        primary key (dept_id)
						);
                        
select * from employee order by salary desc limit 5;

select * from employee where emp_name like 'a%';

select * from employee where dept_id in(101,102,103);

select * from employee where email is not null;

select * from employee where email is null;

select * from employee where salary between 50000 and 100000;

select * from employees where emp_name regexp 'e.n';

select employees.emp_name,department.dept_name from employees inner join department 
	on empolyees.dept_id=department.dept_id;
    
select employees.*,department.dept_name from employees left join department
	on department.dept_id=employees.dept_id;
    
select employees.*,department.dept_name from employees inner join department on department.dept_id=employees.dept_id 
	where department.dept_id=104 and salary between 60000 and 90000 and email is not null;
    
select * from employees order by salary desc limit 6,5;


//   
1: Retrieve the first 5 employees with the highest salary.
2:Fetch all employees whose name starts with "A".
3: Fetch all employees who belong to department 101, 102, or 103.
4: Use the IS NULL and IS NOT NULL operators
		Fetch all employees who have not provided an email address.
		Fetch all employees who have provided an email address.
5:Fetch all employees whose salary is between 50000 and 100000.
6: Use the REGEXP (Regular Expression) operator
		Fetch all employees whose name contains the letter "e" followed by any character and then the letter "n".
7: Fetch employee names along with their department names.
8: Use LEFT JOIN to find employees without a department
		Fetch all employees, including those who don’t belong to any department.
9:Fetch all employees from department 101 whose salary is between 60000 and 90000 and 
have provided an email.
10: Fetch the next 5 employees, starting from the 6th highest-paid employee. 