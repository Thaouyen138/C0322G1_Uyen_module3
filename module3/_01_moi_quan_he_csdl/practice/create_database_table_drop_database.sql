CREATE DATABASE my_database;

DROP DATABASE my_database;

CREATE DATABASE student_management;
USE student_management;

CREATE TABLE student(
id INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(45),
`age` INT ,
`country` VARCHAR(45)
);