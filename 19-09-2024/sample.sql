
CREATE DATABASE collage;
SHOW databases;
USE collage;
create table students(
					std_id INT auto_increment,
                    name VARCHAR(100)NOT NULL,
                    age INT NOT NULL,
                    class VARCHAR(10) NOT NULL,
                    PRIMARY KEY (std_id)
                    );
create table facultee(
					fac_id INT,
                    name VARCHAR(100)NOT NULL,
                    age INT NOT NULL,
                    subject VARCHAR(100) NOT NULL,
                    PRIMARY KEY (fac_id)
                    );
SHOW TABLES;
DESCRIBE students; 
DESCRIBE facultee;


