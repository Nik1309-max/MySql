CREATE DATABASE users;
USE users;
CREATE TABLE user_details(
	id INT,
    name VARCHAR(100),
    age INT NOT NULL,
	email VARCHAR(100),
    phone_number INT
);

INSERT user_details 
VALUES
(1 ,'Nikhil', 29, "nk@gmail.com", 7269),
(2 ,'Nikhil', 29, "nk@gmail.com", 069),
(3 ,'Nikhil', 29, "nk@gmail.com", 7269),
(4 ,'Nikhil', 29, "nk@gmail.com", 7050);


SELECT 
id,name,age
FROM user_details;