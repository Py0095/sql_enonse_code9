CREATE DATABASE StudentGrades CHARACTER SET 'utf8mb4';

USE StudentGrades;

CREATE TABLE Students(
student_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
first_name VARCHAR(50),
last_name VARCHAR(50),
age INT,
grade_math INT,
grade_science INT,
grade_history INT
);

INSERT INTO Students(first_name,last_name,age,grade_math,grade_science,grade_history)VALUES
("Aliano","CHARLES",22,19,4,100),
("Alnias","CHARLES",22,19,4,100),
("Woosias","CHARLES",22,19,4,100),
("Love Woldy Peter","CHARLES",32,19,4,100),
("Ricadeau","Paul",30,19,4,100);

SELECT * FROM  Students
UPDATE Students set grade_math=15 where first_name='Woosias';
