create database student_management;
use student_management;
create table student(
						student_id int auto_increment,
                        name varchar(100) not  null,
                        date_of_birth date not null,
                        email varchar(100) unique not null,
                        primary key (student_id)
);
create table course(
						course_id int auto_increment,
                        course_name varchar(100) not  null,
                        credits int not null,
                        primary key (course_id)
);
create table enrollment(
						enrollment_id int auto_increment,
                        student_id int,
                        course_id int,
                        enrollment_date date not null,
                        primary key (enrollment_id),
                        foreign key(student_id) references student(student_id),
                        foreign key(course_id) references course(course_id)
                        
);
