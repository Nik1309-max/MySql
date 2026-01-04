CREATE DATABASE country;
USE country;
CREATE TABLE users(
	customer_id INT PRIMARY KEY,
    customer VARCHAR(40),
    mode VARCHAR(20),
    city VARCHAR(20)
);

INSERT INTO users
VALUES
(101,"Olivia Barrett","Netbanking","Portland"),
(102,"Ethan Sinclair","Credit Card","Miami"),
(103,"Maya Hernandez","Credit Card","Seattle"),
(104,"Liam Donovan","Netbanking","Denver"), 
(105,"Sophia Nguyen","Credit Card","New Orleans"),
(106,"Caleb Foster","Debit Card","Minneapolis"),
(107,"Ava Patel","Debit Card","Phoenix"),
(108,"Lucas Carter","Netbanking","Boston"),
(109,"Isabella Martinez","Netbanking","Nashville"),
(110,"Jackson Brooks","Credit Card","Boston");

SELECT mode,count(customer_id)
FROM users
;


CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(40),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student 
VALUES
(101,"anil",78,"A","Pune"),
(102,"bhumika",94,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"), 
(105,"farah",82,"B","Delhi"),
(106,"emanual",12,"F","Delhi");

SELECT city
FROM student
WHERE grade = "A" 
GROUP BY city
HAVING MAX(marks)>90
ORDER BY city DESC;

SET SQL_SAFE_UPDATES = 0;

UPDATE student
SET marks = marks+1;

DELETE FROM student 
WHERE marks<100;

SELECT * FROM student;


ALTER TABLE student
CHANGE name full_name VARCHAR(50);

ALTER TABLE student
DROP COLUMN grade;

DELETE FROM student
WHERE marks<80;

DROP TABLE student;
DROP TABLE COURSE;
CREATE TABLE course(
	no INT PRIMARY KEY,
    course VARCHAR(50)
);

INSERT INTO course 
(no,course)
VALUES 
(101,"math"),
(105,"ENG"),
(104,"hindi");

UPDATE course
SET no = 110
WHERE no = 105;

SELECT *
FROM student AS s
LEFT JOIN course AS c
ON c.no = s.rollno
WHERE c.no IS NULL
UNION
SELECT * FROM student AS s
RIGHT JOIN course AS c
ON s.rollno = c.no
WHERE S.rollno IS NULL
;

CREATE TABLE emp(
	id INT PRIMARY KEY,
    name VARCHAR(40),
    manager_id INT
);

INSERT INTO emp
VALUES 
(101,"adam",103),
(102,"bob",104),
(103,"casey",null),
(104,"donald",103);

SELECT a.name AS manager_name, b.name
FROM emp as a
JOIN emp as b
ON a.id = b.manager_id; 















