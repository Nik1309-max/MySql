USE country;
CREATE TABLE student_marks (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    class INT,
    section CHAR(1),
    mathematics INT,
    science INT,
    english INT,
    total_marks INT
);

INSERT INTO student_marks VALUES
(1,'Aman',9,'A',85,88,90,263),
(2,'Riya',9,'B',78,80,75,233),
(3,'Kunal',10,'A',92,95,94,281),
(4,'Sneha',10,'B',88,86,84,258),
(5,'Rahul',8,'A',70,72,68,210),
(6,'Neha',8,'C',90,91,89,270),
(7,'Vikas',9,'C',65,67,70,202),
(8,'Pooja',10,'C',81,83,85,249);
CREATE TABLE fees (
    rollno INT,
    fees_paid INT
);
INSERT INTO fees VALUES
(1,20000),
(2,18000),
(3,25000),
(4,24000),
(6,22000),
(8,23000);

SELECT rollno,name
FROM student_marks
INNER JOIN fees;
