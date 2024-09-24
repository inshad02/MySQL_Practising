create database customer_order_management;
use customer_order_management;
create table Customers(
						customer_id int auto_increment,
                        name varchar(100),
                        email varchar(100),
                        phone varchar(100) not null,
                        primary key(customer_id)
);
create table Orders(
						order_id int auto_increment,
                        order_date date,
                        amount int not null,
                        customer_id int,
                        primary key(order_id),
                        foreign key (customer_id) references Customers(customer_id)
);
insert into  Customers values
						(1,"Alice","alice@gmail.com","9061416397"),
                        (2,"John","john123@gmail.com","9744296960"),
                        (3,"joy","joy69@gmail.com","9207846105");
		
insert into  Orders values
						(1,"2024-05-18","300",1),
                        (2,"2024-05-19","780",2),
                        (3,"2024-05-18","499",1),
                        (4,"2024-05-20","699",3),
						(5,"2024-05-20","489",2);

update Orders
set amount=amount+amount*10/100
where customer_id=1;

delete * from Orders where amount=<150;

select * from Orders;
                        
					
