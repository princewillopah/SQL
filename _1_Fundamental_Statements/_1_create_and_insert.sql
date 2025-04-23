DROP DATABASE IF EXISTS data_analytics_sql;
CREATE DATABASE data_analytics_sql;
USE data_analytics_sql;

DROP DATABASE IF EXISTS customers_table;
CREATE Table customers_table(
cust_id int,
first_name varchar(100),
last_name varchar(100),
age int,
email_id varchar(100)
);

INSERT INTO customers_table
VALUES (1, 'John', 'Doe', 34,'johndoe@example.com');

INSERT INTO customers_table (cust_id, first_name, last_name, age, email_id)
VALUES (2, 'John2', 'Doe2', 23 ,'john2doe2@example.com');

INSERT INTO customers_table (cust_id, first_name, age, email_id)
VALUES (3, 'John3', 23,'john3doe3@example.com');

INSERT INTO customers_table 
VALUES 
	(4, 'John4','Doe4', 23,'john4doe4@example.com'),
    (5, 'John5',NULL, 10,'john5doe5@example.com'),
    (6, 'John6','Doe6', NULL,'john6doe6@example.com'),
    (7, 'John7','Doe7', 27,'john7doe7@example.com'),
    (8, 'John8','Doe8', 53,NULL);

CREATE TABLE TestTable AS
SELECT first_name, last_name
FROM customers_table;