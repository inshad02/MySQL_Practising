create database product_management;
use product_management;
create table customer(
						customer_id int auto_increment,
                        name varchar(100) not  null,
                        email varchar(100) unique not null,
                        phone VARCHAR(100) not null,
                        primary key (customer_id)
);
create table product(
						product_id int auto_increment,
                        product_name varchar(100) not  null,
                        price dec not null,
                        stock int not null,
                        primary key (product_id)
);
create table orders(
						order_id int auto_increment,
                        customer_id int,
                        order_date date not null,
                        total_amount dec not null,
                        primary key (order_id),
                        foreign key(customer_id) references customer(customer_id)
                        
);
create table orders_details(
						order_detail_id int auto_increment,
                        order_id int,
                        product_id int,
                        quantity int not null,
                        price dec not null,
                        primary key (order_detail_id),
                        foreign key(order_id) references orders(order_id),
                        foreign key(product_id) references product(product_id)
                        
);

