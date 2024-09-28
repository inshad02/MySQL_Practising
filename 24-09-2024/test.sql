create table countries (
							country_id int not null auto_increment,
							country_name varchar(100) not null, 
							region_id int not null,
							primary key(country_id)
						);
create table jobs (	
					job_id int auto_increment not null, 
					job_title varchar(100) null, 
                    min_salary int default(8000),
                    max_salary int,
                    primary key(job_id)
				  );
                    
select * from Customer where City="Berlin";

select * from Customer order by City desc;

select * from Customer where City="Berlin" or City="London";

select concat(first_name ,last_name) from employee where age>30;

select item_id,item,price from item where max(price) and min(price);

select * from  employee where department="CS" or department="IT";

create table empsalary (id int(11) not null auto_increment,
						name varchar(100),
                        salary float,
						primary key(id)
);



