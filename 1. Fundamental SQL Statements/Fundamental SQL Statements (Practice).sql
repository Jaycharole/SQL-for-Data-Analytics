-- 1. Fundamental SQL Statements (Practice)

-- 1.1 Excercise - 1
/* 1. Create Database classroom.
   2. Create Table named "Classroom" with the following tables. 3 columns (Enrollment_no, name, Science_Marks.*/

CREATE TABLE Classroom(
	Enrollment_no int,
	name varchar,
	Science_Marks int
);

-- 1.2 Excercise - 2
/* 1. Insert 3 records in the table.*/
INSERT INTO Classroom
VALUES (1, 'Popeye', 33),
(2, 'Olive', 54),
(3, 'Brutus', 98);

-- 2. Insert data from the file students.csv
-- The basic syntax to import data from CSV file into a table using COPY statement is as below.
COPY Classroom FROM 'C:\Program Files\PostgreSQL\14\data\data_copy\Student.csv' DELIMITER ',' CSV HEADER;

-- Excercise - 3
-- 1. Reterive all the data from the table classroom.
SELECT * FROM Classroom;

-- 2. Reterive the name of students who has scored more than 60 marks.
SELECT name 
FROM Classroom
WHERE Science_marks > 60;

-- 3. Reterive all data of students who has scored more than 35 marks but less than 60 marks.
SELECT * FROM Classroom
WHERE Science_marks > 35 
AND Science_marks < 60;

-- 4. Reterive all other students who have scored less than or equal to 35 or more than equal to 60.
SELECT * FROM Classroom
WHERE Science_marks <= 35 
OR Science_marks >= 60;