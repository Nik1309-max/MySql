CREATE DATABASE students;
USE students;
CREATE TABLE student_marks(
	rollno INT PRIMARY KEY NOT NULL,
    name VARCHAR(50),
    class INT NOT NULL,
    section VARCHAR(1),
    science INT NOT NULL,    
    mathematics INT NOT NULL,
    social_science INT NOT NULL,
    gk INT NOT NULL,
    english INT NOT NULL,
    computer INT NOT NULL,
    total_marks INT NOT NULL
);


INSERT INTO student_marks VALUES
(17,'Rohit Sharma',8,'B',72,81,69,65,78,88,453),
(3,'Ananya Singh',6,'A',85,90,88,75,92,94,524),
(45,'Amit Verma',10,'C',66,71,68,70,73,75,423),
(28,'Pooja Patel',9,'A',91,89,90,85,88,92,535),
(9,'Rahul Mehta',7,'C',78,82,75,69,80,85,469),
(61,'Neha Gupta',10,'B',88,92,84,81,90,91,526),
(34,'Karan Malhotra',8,'A',64,70,66,60,68,72,400),
(12,'Sneha Iyer',6,'B',95,96,94,90,93,97,565),
(56,'Arjun Nair',9,'C',73,77,71,68,75,79,443),
(21,'Vikas Yadav',7,'A',82,85,80,78,83,86,494),
(73,'Simran Kaur',10,'A',90,91,89,85,88,92,535),
(18,'Manish Pandey',8,'C',70,74,72,68,71,75,430),
(5,'Riya Das',6,'C',88,84,86,80,85,90,513),
(39,'Suresh Rao',9,'B',65,68,64,60,67,70,394),
(66,'Priya Mishra',10,'C',92,94,90,88,91,95,550),
(24,'Deepak Kumar',7,'B',76,79,74,70,78,80,457),
(48,'Nitin Joshi',8,'B',83,85,81,78,84,87,498),
(31,'Kavita Jain',9,'C',69,72,70,65,71,73,420),
(7,'Aditya Choudhary',6,'A',91,93,89,85,90,94,542),
(54,'Ramesh Lal',9,'A',77,80,75,72,78,82,464),
(90,'Isha Kapoor',10,'B',94,95,92,90,93,96,560),
(26,'Mohit Bansal',7,'C',68,70,66,64,69,71,408),
(14,'Nisha Roy',6,'B',86,88,85,80,87,89,515),
(62,'Sanjay Khanna',10,'A',71,74,70,68,72,75,430),
(37,'Payal Saxena',8,'C',89,90,88,85,91,92,535),
(11,'Varun Aggarwal',6,'A',75,78,74,70,76,79,452),
(58,'Ayesha Khan',9,'B',84,87,82,80,85,88,506),
(22,'Pankaj Soni',7,'A',66,69,65,62,68,70,400),
(41,'Harsh Vardhan',8,'A',92,94,91,89,93,95,554),
(69,'Meenal Arora',10,'C',80,82,79,75,81,84,481),
(4,'Sahil Grover',6,'C',79,81,77,73,80,83,473),
(33,'Tanvi Kulkarni',8,'B',85,88,84,82,86,89,514),
(52,'Gaurav Singh',9,'C',70,73,69,66,72,74,424),
(16,'Kritika Joshi',6,'A',93,95,92,88,94,96,558),
(77,'Ashish Rawat',10,'B',67,70,66,64,68,71,406),
(29,'Shivam Tiwari',7,'B',81,83,80,77,82,85,488),
(63,'Ritu Saxena',10,'A',88,90,87,85,89,91,530),
(19,'Alok Mishra',7,'C',74,76,73,70,75,78,446),
(50,'Nandini Gupta',9,'A',91,93,90,88,92,94,548),
(6,'Yash Patel',6,'B',82,84,81,78,83,86,494),
(84,'Pritam Das',10,'C',72,75,71,68,73,76,435),
(36,'Ankit Sharma',8,'A',78,80,76,74,79,82,469),
(25,'Rohini Sen',7,'A',90,92,89,85,91,93,540),
(68,'Kunal Bhatt',9,'B',64,67,63,60,66,69,389),
(2,'Muskan Ali',6,'C',87,89,86,83,88,90,523),
(59,'Dev Malhotra',9,'C',83,85,82,79,84,87,500),
(43,'Shreya Bose',8,'B',94,96,93,90,95,97,565),
(10,'Saurabh Jain',6,'A',70,72,69,66,71,74,422),
(71,'Rohan Kapoor',10,'A',85,88,84,82,86,89,514),
(32,'Pallavi Deshpande',8,'C',76,78,75,72,77,80,458);

SELECT class
FROM student_marks
GROUP BY class
HAVING COUNT(*) > 10;
