CREATE TABLE student(
	sno SERIAL ,
	rollno INT PRIMARY KEY,
	name VARCHAR(20),
	marks INT NOT NULL
);

INSERT INTO student(name,marks) VALUES 
('Aakash',489); 
INSERT INTO student(rollno,name,marks) VALUES
(1,'Nikhil',300), 
(2,'Ankush',300),
(3,'Aksh',300),
(4,'Annu',300),
(5,'Nishua',300),
(6,'Abhijeet',300),
(7,'Prashant',300),
(8,'Peacock',300);

CREATE TABLE teacher(
	teacher_id INT PRIMARY KEY,
	name VARCHAR(100),
	student_rollno INT,
	FOREIGN KEY student_rollno REFERENCES 
);

SELECT * FROM student;

TRUNCATE TABLE student;

TRUNCATE TABLE teacher;

DROP TABLE student;

DROP TABLE TEACHER;

UPDATE student
SET marks = 400
WHERE rollno = 4;

DELETE FROM student
WHERE rollno = 8;

CREATE DATABASE employee;