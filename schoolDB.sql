CREATE DATABASE SchoolDB;
USE SchoolDB;
CREATE TABLE Students (student_id INT PRIMARY KEY, first_name VARCHAR(50), last_name VARCHAR(50),age INT,class VARCHAR(10) );
INSERT INTO Students (student_id, first_name, last_name, age, class) 
VALUES
 (1,'John','Doe',15,'SS1'),
 (2, 'Mary','Johnson',16,'SS2'),
 (3, 'Peter','Brown', 14,'JSS3'),
 (4, 'Aisha','Bello',14,'SS1'),
 (5, 'David','Smith',17,'SS3');