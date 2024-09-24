create database library;
use library;
create table Author(
					author_id int auto_increment,
                    name varchar(100) not null,
                    country varchar(100) not null,
                    primary key(author_id)
				);
use library;
create table Book(
					book_id int auto_increment,
                    title varchar(100) not null,
                    publication_year int not null,
                    author_id int,
                    primary key(book_id),
                    foreign key (author_id) references Author(author_id)
				);
create table User(
					user_id int auto_increment,
                    name char(100) not null,
                    email char(100) unique not null,
                    membership_date date ,
                    primary key (user_id)
);
create table Loan(
					loan_id int auto_increment,
                    book_id int,
                    user_id int,
                    loan_date date not null,
                    return_date date,
                    primary key(loan_id),
                    foreign key (book_id) references Book(book_id),
                    foreign key (user_id) references User(user_id)
);
