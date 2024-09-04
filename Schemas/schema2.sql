-- Customer Table
CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20),
    address VARCHAR(200),
    city VARCHAR(50),
    state VARCHAR(50),
    zip_code VARCHAR(10),
    created_at DATE
    score       INT(32) NULL
);

-- Order Table
CREATE TABLE `order` (
    order_id    INT(10) NOT NULL AUTO_INCREMENT,
    customer_id INT(10) NOT NULL,
    order_date DATE NULL,
    quantity    INT(32) NULL,
    total_amount DECIMAL(10, 2),
    status VARCHAR(20),
    PRIMARY KEY (order_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

-- create table employees
DROP TABLE IF EXISTS db_sql_tutorial.employees;
CREATE TABLE employee (
    emp_id INT(10) NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    department VARCHAR(50),
    hire_date DATE,
    salary DECIMAL(10, 2)
    PRIMARY KEY (emp_id )
);

-- Sample Data for Customer Table
INSERT INTO customer (customer_id, first_name, last_name, email, phone, address, city, state, zip_code, created_at)
VALUES
(1, 'John', 'Doe', 'johndoe@example.com', '1234567890', '123 Elm Street', 'Springfield', 'IL', '62701', '2023-01-01'),
-- Repeat for other customers...

-- Sample Data for Order Table
INSERT INTO `order` (order_id, customer_id, order_date, total_amount, status)
VALUES
(1, 1, '2023-06-15', 250.00, 'Shipped'),
-- Repeat for other orders...

-- Sample Data for Employee Table
INSERT INTO employee (employee_id, first_name, last_name, email, department, hire_date, salary)
VALUES
(1, 'Jane', 'Smith', 'janesmith@example.com', 'Sales', '2022-03-10', 50000.00),
-- Repeat for other employees...
