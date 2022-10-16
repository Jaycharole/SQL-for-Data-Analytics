-- 1. Fundamental SQL Statements

-- 1.1 CREATE

/*First of all we need to create a database using the query. */\
CREATE DATABASE training;

/*USE query is used to use that particular database.*/
USE training;

/*Creating a basic table involves naming the table and defining its columns and 
each column's data type. */

CREATE TABLE customer_table(
	cust_id int,
	First_name varchar,
	Last_name varchar,
	age int,
	email_id varchar
);


-- 1.2 INSERT
/*The INSERT INTO statement is used to add new records into a database table.*/

-- Single row (without column names specified)
INSERT INTO customer_table
VALUES (1, 'bee', 'cee', 32, 'bc@xyz.com');

-- Single row (with column names specified)
INSERT INTO customer_table ( cust_id , First_name , age, email_id)
VALUES (2, 'dee', 22 , 'd@xyz.com');

-- Multiple rows
INSERT INTO customer_table
VALUES (1, 'ee', 'ef', 35, 'ef@xyz.com'),
(1, 'gee', 'eh', 42, 'gh@xyz.com'),
(1, 'eye', 'jay', 62 , 'ij@xyz.com');

-- Use of COPY Query
-- The basic syntax to import data from CSV file into a table using COPY statement is as below.
COPY customer_table FROM 'C:\Program Files\PostgreSQL\14\data\data_copy\copy.csv' DELIMITER ',' CSV HEADER;

-- 1.3 SELECT Query
/* The SELECT statement is used to fetch the data from a database table which returns this data in the form of a result
table. These result tables are called result sets */

-- Selecting single record
SELECT First_name FROM customer_table;

-- Selecting multiple records
SELECT First_name, Last_name FROM customer_table;

-- Selecting all records
SELECT * FROM customer_table;

-- 1.4 SELECT DISTINCT Query
/*The DISTINCT keyword is used in conjunction with the SELECT statement to eliminate all the duplicate records and
fetching only unique records.*/

-- Single Columns
SELECT DISTINCT First_name FROM customer_table;

-- Multiple Columns
SELECT DISTINCT First_name, age FROM customer_table;

-- 1.5 WHERE query
/*The SQL WHERE clause is used to specify a condition while fetching the data from a single table or by joining with
multiple tables. If the given condition is satisfied, then only it returns a specific value from the table.*/

-- Equals to condition
SELECT First_name FROM customer_table
WHERE age = 22;

-- Less than/Greater than condition
SELECT First_name FROM customer_table
WHERE age > 25;

-- Matching text condition
SELECT * FROM customer_table
WHERE First_name = 'bee';

-- 1.6 Logical Operators
/*The SQL AND & OR operators are used to combine multiple conditions to narrow data in an SQL statement. These two
operators are called as the conjunctive operators.*/

-- AND Operator
SELECT First_name, Last_Name
FROM customer_table
WHERE age>20 AND age<30;

-- OR operator
SELECT First_name, Last_name
FROM customer_table
WHERE age<20 
OR age>30
OR first_name = 'bee';

-- NOT operator
SELECT First_name, Last_name
FROM customer_table
WHERE NOT age = 22;

SELECT First_name, Last_name
FROM customer_name
WHERE NOT age = 22
AND NOT First_name = 'Jay';

-- 1.7 UPDATE Query
/*The SQL UPDATE Query is used to modify the existing records in a table.*/

-- Single row (with column names specified)
UPDATE customer_table
SET age = 17, Last_name = 'Pe'
WHERE cust_id = 2;

-- Multiple rows
UPDATE customer_table
SET email_id = 'gee@xyz.com'
WHERE First_name = 'Gee' OR First_name = 'gee';

