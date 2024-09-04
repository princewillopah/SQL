DROP DATABASE IF EXISTS my_db;
CREATE DATABASE my_db;
USE my_db;


-- create table customers
DROP TABLE IF EXISTS my_db.customers;
CREATE TABLE customers (
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
DROP TABLE IF EXISTS my_db.orders;
CREATE TABLE `orders` (
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
DROP TABLE IF EXISTS my_db.employees;
CREATE TABLE employees (
    emp_id INT(10) NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    department VARCHAR(50),
    hire_date DATE,
    salary DECIMAL(10, 2)
    PRIMARY KEY (emp_id )
);

INSERT INTO customer (customer_id, first_name, last_name, email, phone, address, city, state, zip_code, created_at, score) VALUES
(1, 'John', 'Doe', 'johndoe1@example.com', '0803 123 4567', '123 Main Street', 'Lagos', 'Lagos', '100001', '2019-05-23', 85),
(2, 'Jane', 'Smith', 'janesmith2@example.com', '0806 987 6543', '456 Elm Street', 'Abuja', 'FCT', '900001', '2021-11-12', 73),
(3, 'Michael', 'Johnson', 'michaelj3@example.com', '0703 555 1212', '789 Oak Avenue', 'Port Harcourt', 'Rivers', '500001', '2017-07-08', 62),
(4, 'Emily', 'Davis', 'emilyd4@example.com', '0812 333 4444', '321 Pine Road', 'Kano', 'Kano', '700001', '2023-02-17', 90),
(5, 'David', 'Williams', 'davidw5@example.com', '0903 123 4567', '654 Cedar Street', 'Ibadan', 'Oyo', '200001', '2022-07-14', 78),
(6, 'Sarah', 'Brown', 'sarahb6@example.com', '0706 987 6543', '789 Pine Avenue', 'Enugu', 'Enugu', '400001', '2020-11-19', 68),
(7, 'Daniel', 'Taylor', 'danielt7@example.com', '0802 555 1212', '123 Maple Street', 'Benin City', 'Edo', '300001', '2018-08-24', 55),
(8, 'Olivia', 'White', 'oliviaw8@example.com', '0812 444 5555', '456 Willow Road', 'Jos', 'Plateau', '930001', '2021-01-10', 82),
(9, 'James', 'Harris', 'jamesh9@example.com', '0703 666 7777', '789 Birch Avenue', 'Katsina', 'Katsina', '820001', '2016-09-03', 95),
(10, 'Sophia', 'Martin', 'sophiam10@example.com', '0906 777 8888', '123 Oak Road', 'Maiduguri', 'Borno', '600001', '2017-12-29', 60),
(11, 'Alexander', 'Lee', 'alexanderl11@example.com', '0803 111 2222', '789 Cedar Avenue', 'Akure', 'Ondo', '340001', '2022-04-21', 91),
(12, 'Mia', 'King', 'miak12@example.com', '0812 222 3333', '123 Elm Road', 'Ilorin', 'Kwara', '240001', '2023-05-12', 87),
(13, 'Benjamin', 'Scott', 'benjamins13@example.com', '0706 888 9999', '654 Maple Street', 'Calabar', 'Cross River', '540001', '2020-10-02', 77),
(14, 'Charlotte', 'Hill', 'charlotteh14@example.com', '0803 444 5555', '456 Cedar Avenue', 'Owerri', 'Imo', '460001', '2021-06-25', 65),
(15, 'Liam', 'Green', 'liamg15@example.com', '0902 333 4444', '789 Pine Road', 'Abeokuta', 'Ogun', '110001', '2019-11-09', 84),
(16, 'Amelia', 'Adams', 'ameliaa16@example.com', '0812 111 2222', '123 Oak Avenue', 'Onitsha', 'Anambra', '430001', '2022-03-18', 70),
(17, 'Elijah', 'Nelson', 'elijahn17@example.com', '0806 555 6666', '456 Birch Road', 'Sokoto', 'Sokoto', '840001', '2020-12-31', 79),
(18, 'Isabella', 'Carter', 'isabellac18@example.com', '0903 222 3333', '789 Elm Street', 'Uyo', 'Akwa Ibom', '520001', '2017-04-27', 88),
(19, 'Noah', 'Mitchell', 'noahm19@example.com', '0702 444 5555', '123 Cedar Avenue', 'Yola', 'Adamawa', '640001', '2018-01-15', 66),
(20, 'Ava', 'Perez', 'avap20@example.com', '0807 333 4444', '456 Oak Road', 'Zaria', 'Kaduna', '800001', '2023-07-22', 73),
(21, 'Lucas', 'Roberts', 'lucasr21@example.com', '0902 555 6666', '789 Pine Avenue', 'Minna', 'Niger', '920001', '2020-05-13', 85),
(22, 'Mason', 'Turner', 'masont22@example.com', '0811 111 2222', '123 Maple Street', 'Lokoja', 'Kogi', '260001', '2019-08-29', 72),
(23, 'Ethan', 'Phillips', 'ethanp23@example.com', '0806 333 4444', '456 Birch Road', 'Ado-Ekiti', 'Ekiti', '360001', '2021-02-03', 90),
(24, 'Sophia', 'Campbell', 'sophiac24@example.com', '0903 222 3333', '789 Oak Street', 'Makurdi', 'Benue', '970001', '2022-10-05', 78),
(25, 'Logan', 'Collins', 'loganc25@example.com', '0805 444 5555', '123 Cedar Avenue', 'Umuahia', 'Abia', '440001', '2020-06-30', 74),
(26, 'Harper', 'Morgan', 'harperm26@example.com', '0708 555 6666', '456 Pine Road', 'Gombe', 'Gombe', '760001', '2017-12-18', 81),
(27, 'Oliver', 'James', 'oliverj27@example.com', '0907 333 4444', '789 Maple Avenue', 'Keffi', 'Nasarawa', '960001', '2018-11-04', 68),
(28, 'Mila', 'Ross', 'milar28@example.com', '0815 111 2222', '123 Birch Street', 'Bida', 'Niger', '920002', '2023-03-21', 92),
(29, 'Henry', 'Reed', 'henryr29@example.com', '0806 777 8888', '456 Elm Road', 'Aba', 'Abia', '450001', '2020-01-12', 64),
(30, 'Emily', 'Bailey', 'emilyb30@example.com', '0905 333 4444', '789 Oak Avenue', 'Ikeja', 'Lagos', '100002', '2022-07-29', 86),
(31, 'Sebastian', 'Clark', 'sebastianc31@example.com', '0704 444 5555', '123 Pine Road', 'Jalingo', 'Taraba', '660001', '2019-09-15', 77),
(32, 'Chloe', 'Young', 'chloey32@example.com', '0807 555 6666', '456 Maple Avenue', 'Damaturu', 'Yobe', '320001', '2018-03-02', 91),
(33, 'William', 'Ramirez', 'williamr33@example.com', '0903 111 2222', '789 Cedar Street', 'Kano', 'Kano', '700002', '2021-05-08', 74),
(34, 'Evelyn', 'Murphy', 'evelynm34@example.com', '0812 444 5555', '123 Elm Avenue', 'Owerri', 'Imo', '460002', '2017-11-23', 88),
(35, 'Jackson', 'Bennett', 'jacksonb35@example.com', '0803 777 8888', '456 Pine Street', 'Ogbomoso', 'Oyo', '210001', '2023-01-31', 67),
(36, 'Ella', 'Perez', 'ellap36@example.com', '0908 333 4444', '789 Maple Road', 'Ilorin', 'Kwara', '240002', '2022-06-26', 80),
(37, 'Aiden', 'Torres', 'aident37@example.com', '0806 222 3333', '123 Birch Avenue', 'Lokoja', 'Kogi', '260002', '2019-02-20', 82),
(38, 'Scarlett', 'Long', 'scarlettl38@example.com', '0811 444 5555', '456 Cedar Road', 'Owerri', 'Imo', '460003', '2020-10-17', 76),
(39, 'Lily', 'Griffin', 'lilyg39@example.com', '0902 555 6666', '789 Elm Avenue', 'Katsina', 'Katsina', '820002', '2021-04-29', 83),
(40, 'Lucas', 'Russell', 'lucasr40@example.com', '0809 111 2222', '123 Oak Street', 'Benin City', 'Edo', '300002', '2017-08-31', 79),
(41, 'Zoe', 'Wright', 'zoew41@example.com', '0907 777 8888', '456 Maple Road', 'Enugu', 'Enugu', '400002', '2023-07-20', 89),
(42, 'Landon', 'Edwards', 'landone42@example.com', '0804 333 4444', '789 Cedar Road', 'Yola', 'Adamawa', '640002', '2018-05-04', 87),
(43, 'Aubrey', 'Flores', 'aubreyf43@example.com', '0815 444 5555', '123 Pine Avenue', 'Gombe', 'Gombe', '760002', '2022-01-17', 66),
(44, 'Dylan', 'Ortiz', 'dylano44@example.com', '0803 111 2222', '456 Oak Avenue', 'Jalingo', 'Taraba', '660002', '2020-06-05', 71),
(45, 'Aria', 'Evans', 'ariae45@example.com', '0905 333 4444', '789 Cedar Avenue', 'Abeokuta', 'Ogun', '110002', '2019-07-22', 84),
(46, 'Matthew', 'Perez', 'matthewp46@example.com', '0810 555 6666', '123 Maple Road', 'Maiduguri', 'Borno', '600002', '2021-03-27', 75),
(47, 'Hannah', 'Cox', 'hannahc47@example.com', '0802 777 8888', '456 Elm Road', 'Sokoto', 'Sokoto', '840002', '2017-10-09', 88),
(48, 'James', 'Gomez', 'jamesg48@example.com', '0904 111 2222', '789 Oak Avenue', 'Damaturu', 'Yobe', '320002', '2022-08-11', 73),
(49, 'Ella', 'Lopez', 'ellal49@example.com', '0807 333 4444', '123 Pine Avenue', 'Umuahia', 'Abia', '440002', '2019-06-13', 69),
(50, 'Carter', 'Nguyen', 'cartern50@example.com', '0816 555 6666', '456 Cedar Street', 'Zaria', 'Kaduna', '800002', '2023-09-02', 81),
(51, 'Victoria', 'Kim', 'victoriak51@example.com', '0901 777 8888', '789 Maple Street', 'Ilorin', 'Kwara', '240003', '2020-04-16', 90),
(52, 'Wyatt', 'Hughes', 'wyatth52@example.com', '0808 111 2222', '123 Elm Avenue', 'Calabar', 'Cross River', '540002', '2021-07-21', 78),
(53, 'Ella', 'Price', 'ellap53@example.com', '0814 555 6666', '456 Cedar Avenue', 'Ado-Ekiti', 'Ekiti', '360002', '2018-12-05', 87),
(54, 'Ryan', 'Myers', 'ryanm54@example.com', '0805 333 4444', '789 Oak Road', 'Yola', 'Adamawa', '640003', '2023-04-03', 74),
(55, 'Avery', 'Sullivan', 'averys55@example.com', '0903 111 2222', '123 Pine Avenue', 'Port Harcourt', 'Rivers', '500002', '2019-11-27', 80),
(56, 'Levi', 'Jenkins', 'levij56@example.com', '0804 555 6666', '456 Maple Road', 'Minna', 'Niger', '920003', '2017-07-19', 86),
(57, 'Sofia', 'Perry', 'sofiap57@example.com', '0813 777 8888', '789 Cedar Street', 'Owerri', 'Imo', '460004', '2020-10-22', 88),
(58, 'Jack', 'Powell', 'jackp58@example.com', '0809 333 4444', '123 Elm Road', 'Lagos', 'Lagos', '100003', '2021-12-19', 66),
(59, 'Mia', 'Baker', 'miab59@example.com', '0817 111 2222', '456 Cedar Avenue', 'Ibadan', 'Oyo', '200002', '2018-08-16', 79),
(60, 'Jackson', 'Sanders', 'jacksons60@example.com', '0902 777 8888', '789 Oak Street', 'Akure', 'Ondo', '340002', '2023-06-07', 71),
(61, 'Stella', 'Rivera', 'stellar61@example.com', '0801 333 4444', '123 Pine Avenue', 'Abuja', 'FCT', '900002', '2020-01-24', 76),
(62, 'David', 'Morris', 'davidm62@example.com', '0818 555 6666', '456 Maple Road', 'Benin City', 'Edo', '300003', '2017-04-11', 85),
(63, 'Zoey', 'Reyes', 'zoeyr63@example.com', '0804 111 2222', '789 Cedar Road', 'Port Harcourt', 'Rivers', '500003', '2021-08-30', 82),
(64, 'Grace', 'Brooks', 'graceb64@example.com', '0810 333 4444', '123 Elm Avenue', 'Ibadan', 'Oyo', '200003', '2019-02-12', 90),
(65, 'Mateo', 'Foster', 'mateof65@example.com', '0906 555 6666', '456 Cedar Avenue', 'Abeokuta', 'Ogun', '110003', '2022-03-25', 77),
(66, 'Isabella', 'Gray', 'isabellag66@example.com', '0807 777 8888', '789 Maple Street', 'Aba', 'Abia', '450002', '2020-05-01', 83),
(67, 'Luke', 'Murphy', 'lukem67@example.com', '0819 111 2222', '123 Oak Avenue', 'Maiduguri', 'Borno', '600003', '2023-10-12', 71),
(68, 'Riley', 'Cruz', 'rileyc68@example.com', '0901 333 4444', '456 Pine Street', 'Gombe', 'Gombe', '760003', '2021-05-24', 68),
(69, 'Olivia', 'Gonzalez', 'oliviag69@example.com', '0802 555 6666', '789 Cedar Road', 'Ilorin', 'Kwara', '240004', '2018-01-05', 86),
(70, 'Jayden', 'Peterson', 'jaydenp70@example.com', '0811 777 8888', '123 Maple Avenue', 'Minna', 'Niger', '920004', '2020-06-18', 92),
(71, 'Elena', 'Nguyen', 'elenan71@example.com', '0806 333 4444', '456 Oak Street', 'Owerri', 'Imo', '460005', '2021-09-27', 69),
(72, 'Isaac', 'Roberts', 'isaacr72@example.com', '0907 111 2222', '789 Pine Road', 'Benin City', 'Edo', '300004', '2017-11-06', 65),
(73, 'Leah', 'Long', 'leahl73@example.com', '0812 333 4444', '123 Cedar Avenue', 'Lokoja', 'Kogi', '260003', '2019-05-10', 78),
(74, 'Samuel', 'Lopez', 'samuell74@example.com', '0803 777 8888', '456 Elm Avenue', 'Uyo', 'Akwa Ibom', '520003', '2022-07-29', 84),
(75, 'Penelope', 'Diaz', 'peneloped75@example.com', '0815 111 2222', '789 Maple Street', 'Sokoto', 'Sokoto', '840003', '2019-11-08', 81),
(76, 'Henry', 'James', 'henryj76@example.com', '0808 555 6666', '123 Cedar Road', 'Akure', 'Ondo', '340003', '2023-01-13', 70),
(77, 'Camila', 'Simmons', 'camilas77@example.com', '0904 777 8888', '456 Elm Avenue', 'Damaturu', 'Yobe', '320003', '2020-03-03', 74),
(78, 'Joseph', 'Richardson', 'josephr78@example.com', '0805 111 2222', '789 Oak Road', 'Gombe', 'Gombe', '760004', '2018-12-12', 85),
(79, 'Layla', 'Wood', 'laylaw79@example.com', '0816 333 4444', '123 Cedar Avenue', 'Enugu', 'Enugu', '400003', '2021-06-28', 69),
(80, 'Hudson', 'Martinez', 'hudsonm80@example.com', '0802 777 8888', '456 Maple Street', 'Jalingo', 'Taraba', '660003', '2019-01-02', 72),
(81, 'Avery', 'Brooks', 'averyb81@example.com', '0905 111 2222', '789 Elm Road', 'Ado-Ekiti', 'Ekiti', '360003', '2022-03-20', 79),
(82, 'Aria', 'Butler', 'ariab82@example.com', '0809 333 4444', '123 Oak Avenue', 'Benin City', 'Edo', '300005', '2020-07-14', 66),
(83, 'Julian', 'Cook', 'julianc83@example.com', '0818 777 8888', '456 Pine Road', 'Lokoja', 'Kogi', '260004', '2021-10-01', 81),
(84, 'Charlotte', 'Wright', 'charlottew84@example.com', '0804 111 2222', '789 Maple Avenue', 'Lagos', 'Lagos', '100004', '2017-03-21', 77),
(85, 'Liam', 'Mitchell', 'liamm85@example.com', '0810 333 4444', '123 Elm Road', 'Umuahia', 'Abia', '440003', '2023-09-09', 86),
(86, 'Madison', 'Bailey', 'madisonb86@example.com', '0801 555 6666', '456 Cedar Avenue', 'Minna', 'Niger', '920005', '2020-11-30', 72),
(87, 'Eli', 'Carter', 'elic87@example.com', '0907 777 8888', '789 Oak Avenue', 'Owerri', 'Imo', '460006', '2019-07-14', 89),
(88, 'Hazel', 'Morris', 'hazelm88@example.com', '0806 111 2222', '123 Pine Street', 'Gombe', 'Gombe', '760005', '2021-04-09', 80),
(89, 'Isaiah', 'Perry', 'isaiahp89@example.com', '0812 555 6666', '456 Maple Avenue', 'Benin City', 'Edo', '300006', '2018-06-18', 84),
(90, 'Riley', 'Collins', 'rileyc90@example.com', '0803 333 4444', '789 Cedar Road', 'Yola', 'Adamawa', '640004', '2022-09-05', 71),
(91, 'Sofia', 'Hill', 'sofiah91@example.com', '0902 777 8888', '123 Elm Avenue', 'Abeokuta', 'Ogun', '110004', '2019-10-30', 88),
(92, 'Caleb', 'Flores', 'calebf92@example.com', '0807 111 2222', '456 Maple Street', 'Uyo', 'Akwa Ibom', '520004', '2023-02-28', 66),
(93, 'Lila', 'Hughes', 'lilah93@example.com', '0819 333 4444', '789 Oak Road', 'Calabar', 'Cross River', '540003', '2020-05-08', 83),
(94, 'Oliver', 'Gray', 'oliverg94@example.com', '0802 555 6666', '123 Pine Road', 'Ilorin', 'Kwara', '240005', '2021-11-15', 77),
(95, 'Aubrey', 'Richardson', 'aubreyr95@example.com', '0816 777 8888', '456 Elm Avenue', 'Sokoto', 'Sokoto', '840004', '2019-03-23', 86),
(96, 'Elijah', 'Cooper', 'elijahc96@example.com', '0901 111 2222', '789 Cedar Road', 'Benin City', 'Edo', '300007', '2022-07-16', 81),
(97, 'Harper', 'Ward', 'harperw97@example.com', '0804 333 4444', '123 Oak Avenue', 'Damaturu', 'Yobe', '320004', '2017-09-27', 76),
(98, 'Nathan', 'James', 'nathanj98@example.com', '0811 555 6666', '456 Pine Street', 'Ibadan', 'Oyo', '200004', '2020-02-07', 83),
(99, 'Savannah', 'Parker', 'savannahp99@example.com', '0809 777 8888', '789 Elm Avenue', 'Minna', 'Niger', '920006', '2023-10-18', 79),
(100, 'Lillian', 'Green', 'lilliang100@example.com', '0905 333 4444', '123 Cedar Avenue', 'Benin City', 'Edo', '300008', '2018-04-13', 87);




INSERT INTO orders (customer_id, order_date, quantity, total_amount, status) VALUES
(1, '2023-08-15', 5, 150.75, 'Shipped'),
(2, '2023-07-22', 3, 99.99, 'Delivered'),
(3, '2023-06-30', 2, 49.50, 'Cancelled'),
(4, '2023-05-21', 4, 120.00, 'Processing'),
(5, '2023-04-14', 6, 180.20, 'Shipped'),
(6, '2023-03-09', 1, 29.99, 'Delivered'),
(7, '2023-02-28', 7, 210.99, 'Shipped'),
(8, '2023-01-19', 8, 240.75, 'Cancelled'),
(9, '2022-12-10', 9, 270.00, 'Processing'),
(10, '2022-11-05', 3, 99.50, 'Delivered'),
(11, '2022-10-22', 2, 59.75, 'Shipped'),
(12, '2022-09-30', 5, 150.25, 'Processing'),
(13, '2022-08-15', 4, 130.99, 'Delivered'),
(14, '2022-07-14', 6, 180.50, 'Cancelled'),
(15, '2022-06-20', 7, 210.75, 'Shipped'),
(16, '2022-05-19', 8, 240.25, 'Delivered'),
(17, '2022-04-12', 9, 270.50, 'Processing'),
(18, '2022-03-05', 1, 30.99, 'Shipped'),
(19, '2022-02-18', 3, 99.99, 'Cancelled'),
(20, '2022-01-11', 2, 49.50, 'Processing'),
(21, '2021-12-28', 4, 120.75, 'Delivered'),
(22, '2021-11-15', 6, 180.20, 'Shipped'),
(23, '2021-10-22', 5, 150.50, 'Cancelled'),
(24, '2021-09-30', 8, 240.99, 'Delivered'),
(25, '2021-08-12', 9, 270.25, 'Shipped'),
(26, '2021-07-22', 7, 210.50, 'Processing'),
(27, '2021-06-18', 2, 59.99, 'Shipped'),
(28, '2021-05-21', 3, 99.50, 'Delivered'),
(29, '2021-04-11', 4, 120.99, 'Cancelled'),
(30, '2021-03-08', 1, 30.75, 'Processing'),
(31, '2021-02-28', 6, 180.75, 'Shipped'),
(32, '2021-01-10', 7, 210.99, 'Delivered'),
(33, '2020-12-20', 8, 240.50, 'Cancelled'),
(34, '2020-11-05', 9, 270.75, 'Processing'),
(35, '2020-10-15', 5, 150.20, 'Shipped'),
(36, '2020-09-25', 2, 59.50, 'Delivered'),
(37, '2020-08-14', 4, 120.50, 'Cancelled'),
(38, '2020-07-29', 3, 99.75, 'Processing'),
(39, '2020-06-12', 7, 210.20, 'Shipped'),
(40, '2020-05-30', 8, 240.99, 'Delivered'),
(41, '2020-04-25', 9, 270.50, 'Processing'),
(42, '2020-03-18', 1, 30.20, 'Shipped'),
(43, '2020-02-20', 6, 180.50, 'Delivered'),
(44, '2020-01-11', 5, 150.99, 'Cancelled'),
(45, '2019-12-29', 2, 59.75, 'Shipped'),
(46, '2019-11-14', 4, 120.75, 'Delivered'),
(47, '2019-10-05', 3, 99.50, 'Processing'),
(48, '2019-09-01', 8, 240.50, 'Cancelled'),
(49, '2019-08-20', 7, 210.99, 'Shipped'),
(50, '2019-07-15', 9, 270.75, 'Delivered'),
(51, '2019-06-25', 1, 30.99, 'Cancelled'),
(52, '2019-05-18', 6, 180.75, 'Processing'),
(53, '2019-04-11', 5, 150.50, 'Shipped'),
(54, '2019-03-22', 2, 59.20, 'Delivered'),
(55, '2019-02-07', 4, 120.50, 'Cancelled'),
(56, '2019-01-15', 3, 99.75, 'Shipped'),
(57, '2018-12-18', 7, 210.75, 'Delivered'),
(58, '2018-11-29', 8, 240.99, 'Cancelled'),
(59, '2018-10-10', 9, 270.50, 'Processing'),
(60, '2018-09-05', 1, 30.20, 'Shipped'),
(61, '2018-08-20', 6, 180.50, 'Delivered'),
(62, '2018-07-25', 5, 150.99, 'Cancelled'),
(63, '2018-06-14', 2, 59.75, 'Processing'),
(64, '2018-05-05', 4, 120.75, 'Shipped'),
(65, '2018-04-18', 3, 99.50, 'Delivered'),
(66, '2018-03-21', 8, 240.50, 'Cancelled'),
(67, '2018-02-11', 7, 210.99, 'Processing'),
(68, '2018-01-09', 9, 270.75, 'Shipped'),
(69, '2017-12-20', 1, 30.99, 'Delivered'),
(70, '2017-11-13', 6, 180.75, 'Cancelled'),
(71, '2017-10-08', 5, 150.50, 'Processing'),
(72, '2017-09-01', 2, 59.20, 'Shipped'),
(73, '2017-08-19', 4, 120.50, 'Delivered'),
(74, '2017-07-15', 3, 99.75, 'Cancelled'),
(75, '2017-06-20', 7, 210.75, 'Processing'),
(76, '2017-05-28', 8, 240.99, 'Shipped'),
(77, '2017-04-10', 9, 270.50, 'Delivered'),
(78, '2017-03-12', 1, 30.20, 'Processing'),
(79, '2017-02-28', 6, 180.50, 'Shipped'),
(80, '2017-01-15', 5, 150.99, 'Delivered'),
(81, '2016-12-19', 2, 59.75, 'Cancelled'),
(82, '2016-11-07', 4, 120.75, 'Processing'),
(83, '2016-10-25', 3, 99.50, 'Shipped'),
(84, '2016-09-30', 8, 240.50, 'Delivered'),
(85, '2016-08-22', 7, 210.99, 'Processing'),
(86, '2016-07-18', 9, 270.75, 'Shipped'),
(87, '2016-06-11', 1, 30.99, 'Cancelled'),
(88, '2016-05-28', 6, 180.75, 'Processing'),
(89, '2016-04-20', 5, 150.50, 'Shipped'),
(90, '2016-03-19', 2, 59.20, 'Delivered'),
(91, '2016-02-09', 4, 120.50, 'Cancelled'),
(92, '2016-01-12', 3, 99.75, 'Shipped'),
(93, '2015-12-30', 7, 210.75, 'Delivered'),
(94, '2015-11-15', 8, 240.99, 'Cancelled'),
(95, '2015-10-05', 9, 270.50, 'Processing'),
(96, '2015-09-20', 1, 30.20, 'Shipped'),
(97, '2015-08-14', 6, 180.50, 'Delivered'),
(98, '2015-07-29', 5, 150.99, 'Cancelled'),
(99, '2015-06-11', 2, 59.75, 'Processing'),
(100, '2015-05-10', 4, 120.75, 'Shipped');




INSERT INTO employees (emp_id, first_name, last_name, email, department, hire_date, salary) VALUES
(1, 'John', 'Doe', 'johndoe@company.com', 'Engineering', '2015-06-15', 75000.00),
(2, 'Jane', 'Smith', 'janesmith@company.com', 'HR', '2016-07-20', 65000.00),
(3, 'Michael', 'Johnson', 'michaelj@company.com', 'Finance', '2017-08-10', 80000.00),
(4, 'Emily', 'Davis', 'emilyd@company.com', 'Marketing', '2018-09-25', 72000.00),
(5, 'David', 'Brown', 'davidb@company.com', 'Engineering', '2019-10-30', 78000.00),
(6, 'Sarah', 'Wilson', 'sarahw@company.com', 'HR', '2020-11-05', 67000.00),
(7, 'James', 'Taylor', 'jamest@company.com', 'Finance', '2021-12-15', 81000.00),
(8, 'Olivia', 'Martinez', 'oliviam@company.com', 'Marketing', '2015-01-20', 73000.00),
(9, 'Robert', 'Anderson', 'roberta@company.com', 'Engineering', '2016-02-22', 76000.00),
(10, 'Sophia', 'Thomas', 'sophiat@company.com', 'HR', '2017-03-30', 68000.00),
(11, 'Daniel', 'Moore', 'danielm@company.com', 'Finance', '2018-04-10', 82000.00),
(12, 'Grace', 'Martin', 'gracem@company.com', 'Marketing', '2019-05-15', 74000.00),
(13, 'Andrew', 'Jackson', 'andrewj@company.com', 'Engineering', '2020-06-20', 79000.00),
(14, 'Charlotte', 'White', 'charlottew@company.com', 'HR', '2021-07-25', 69000.00),
(15, 'Joshua', 'Harris', 'joshuah@company.com', 'Finance', '2015-08-30', 83000.00),
(16, 'Amelia', 'Lewis', 'amelial@company.com', 'Marketing', '2016-09-10', 75000.00),
(17, 'Matthew', 'Walker', 'mattheww@company.com', 'Engineering', '2017-10-15', 80000.00),
(18, 'Elizabeth', 'Young', 'elizabethy@company.com', 'HR', '2018-11-25', 70000.00),
(19, 'Christopher', 'King', 'christopherk@company.com', 'Finance', '2019-12-30', 84000.00),
(20, 'Mia', 'Wright', 'miaw@company.com', 'Marketing', '2020-01-05', 76000.00),
(21, 'Joseph', 'Lopez', 'josephl@company.com', 'Engineering', '2021-02-20', 81000.00),
(22, 'Abigail', 'Scott', 'abigails@company.com', 'HR', '2015-03-15', 71000.00),
(23, 'Samuel', 'Green', 'samuelg@company.com', 'Finance', '2016-04-25', 85000.00),
(24, 'Isabella', 'Adams', 'isabellaa@company.com', 'Marketing', '2017-05-30', 77000.00),
(25, 'Benjamin', 'Baker', 'benjaminb@company.com', 'Engineering', '2018-06-10', 82000.00),
(26, 'Madison', 'Gonzalez', 'madisong@company.com', 'HR', '2019-07-25', 72000.00),
(27, 'Lucas', 'Nelson', 'lucasn@company.com', 'Finance', '2020-08-30', 86000.00),
(28, 'Chloe', 'Carter', 'chloec@company.com', 'Marketing', '2021-09-15', 78000.00),
(29, 'Henry', 'Mitchell', 'henrym@company.com', 'Engineering', '2015-10-10', 83000.00),
(30, 'Ella', 'Perez', 'ellap@company.com', 'HR', '2016-11-20', 73000.00),
(31, 'Alexander', 'Roberts', 'alexanderr@company.com', 'Finance', '2017-12-15', 87000.00),
(32, 'Avery', 'Turner', 'averyt@company.com', 'Marketing', '2018-01-05', 79000.00),
(33, 'Jack', 'Phillips', 'jackp@company.com', 'Engineering', '2019-02-20', 84000.00),
(34, 'Scarlett', 'Campbell', 'scarlettc@company.com', 'HR', '2020-03-15', 74000.00),
(35, 'Sebastian', 'Parker', 'sebastianp@company.com', 'Finance', '2021-04-25', 88000.00),
(36, 'Lily', 'Evans', 'lilye@company.com', 'Marketing', '2015-05-30', 80000.00),
(37, 'Aiden', 'Edwards', 'aidene@company.com', 'Engineering', '2016-06-10', 85000.00),
(38, 'Aria', 'Collins', 'ariac@company.com', 'HR', '2017-07-25', 75000.00),
(39, 'Ethan', 'Stewart', 'ethans@company.com', 'Finance', '2018-08-30', 89000.00),
(40, 'Ella', 'Sanchez', 'ellas@company.com', 'Marketing', '2019-09-15', 81000.00),
(41, 'Logan', 'Morris', 'loganm@company.com', 'Engineering', '2020-10-10', 86000.00),
(42, 'Sofia', 'Rogers', 'sofiar@company.com', 'HR', '2021-11-20', 76000.00),
(43, 'Mason', 'Reed', 'masonr@company.com', 'Finance', '2015-12-15', 90000.00),
(44, 'Aubrey', 'Cook', 'aubreyc@company.com', 'Marketing', '2016-01-05', 82000.00),
(45, 'Jacob', 'Morgan', 'jacobm@company.com', 'Engineering', '2017-02-20', 87000.00),
(46, 'Hannah', 'Bell', 'hannahb@company.com', 'HR', '2018-03-15', 77000.00),
(47, 'William', 'Murphy', 'williamm@company.com', 'Finance', '2019-04-25', 91000.00),
(48, 'Lillian', 'Bailey', 'lillianb@company.com', 'Marketing', '2020-05-30', 83000.00),
(49, 'Owen', 'Rivera', 'owenr@company.com', 'Engineering', '2021-06-10', 88000.00),
(50, 'Addison', 'Cooper', 'addisonc@company.com', 'HR', '2015-07-25', 78000.00),
(51, 'Jameson', 'Richardson', 'jamesonr@company.com', 'Finance', '2016-08-30', 92000.00),
(52, 'Ella', 'Cox', 'ellac@company.com', 'Marketing', '2017-09-15', 84000.00),
(53, 'Mason', 'Howard', 'masonh@company.com', 'Engineering', '2018-10-10', 89000.00),
(54, 'Mila', 'Ward', 'milaw@company.com', 'HR', '2019-11-20', 80000.00),
(55, 'Benjamin', 'Torres', 'benjamint@company.com', 'Finance', '2020-12-15', 93000.00),
(56, 'Luna', 'Peterson', 'lunap@company.com', 'Marketing', '2021-01-05', 85000.00),
(57, 'Elijah', 'Gray', 'elijahg@company.com', 'Engineering', '2015-02-20', 90000.00),
(58, 'Victoria', 'Ramirez', 'victoriar@company.com', 'HR', '2016-03-15', 81000.00),
(59, 'Carter', 'James', 'carterj@company.com', 'Finance', '2017-04-25', 94000.00),
(60, 'Penelope', 'Watson', 'penelopew@company.com', 'Marketing', '2018-05-30', 86000.00),
(61, 'Zoe', 'Brooks', 'zoeb@company.com', 'Engineering', '2016-06-15', 91000.00),
(62, 'Nathan', 'Hughes', 'nathanh@company.com', 'HR', '2017-07-20', 82000.00),
(63, 'Emma', 'Price', 'emmap@company.com', 'Finance', '2018-08-10', 95000.00),
(64, 'Lucas', 'Sanders', 'lucass@company.com', 'Marketing', '2019-09-25', 87000.00),
(65, 'Olivia', 'Bennett', 'oliviab@company.com', 'Engineering', '2020-10-30', 93000.00),
(66, 'Aiden', 'Wood', 'aidenw@company.com', 'HR', '2021-11-05', 84000.00),
(67, 'Charlotte', 'Ross', 'charlotter@company.com', 'Finance', '2015-12-15', 96000.00),
(68, 'Liam', 'Kelly', 'liamk@company.com', 'Marketing', '2016-01-20', 88000.00),
(69, 'Ethan', 'Patterson', 'ethanp@company.com', 'Engineering', '2017-02-22', 92000.00),
(70, 'Sophia', 'Reed', 'sophiar@company.com', 'HR', '2018-03-30', 85000.00),
(71, 'Amelia', 'Cruz', 'ameliac@company.com', 'Finance', '2019-04-10', 97000.00),
(72, 'James', 'Bailey', 'jamesb@company.com', 'Marketing', '2020-05-15', 89000.00),
(73, 'Noah', 'Foster', 'noahf@company.com', 'Engineering', '2021-06-20', 94000.00),
(74, 'Mia', 'Gonzalez', 'miag@company.com', 'HR', '2015-07-25', 86000.00),
(75, 'Jacob', 'Ortiz', 'jacobo@company.com', 'Finance', '2016-08-30', 98000.00),
(76, 'Harper', 'Simmons', 'harpers@company.com', 'Marketing', '2017-09-10', 90000.00),
(77, 'Daniel', 'Powell', 'danielp@company.com', 'Engineering', '2018-10-15', 95000.00),
(78, 'Lily', 'Gonzalez', 'lilyg@company.com', 'HR', '2019-11-25', 87000.00),
(79, 'Logan', 'Bryant', 'loganb@company.com', 'Finance', '2020-12-30', 99000.00),
(80, 'Aria', 'Alexander', 'ariaa@company.com', 'Marketing', '2021-01-05', 91000.00),
(81, 'Mason', 'Griffin', 'masong@company.com', 'Engineering', '2015-02-20', 96000.00),
(82, 'Ella', 'Hayes', 'ellah@company.com', 'HR', '2016-03-15', 88000.00),
(83, 'Levi', 'Long', 'levil@company.com', 'Finance', '2017-04-25', 100000.00),
(84, 'Luna', 'Butler', 'lunab@company.com', 'Marketing', '2018-05-30', 92000.00),
(85, 'Henry', 'Mitchell', 'henrym@company.com', 'Engineering', '2019-06-10', 97000.00),
(86, 'Scarlett', 'Sullivan', 'scarletts@company.com', 'HR', '2020-07-25', 89000.00),
(87, 'Sebastian', 'Washington', 'sebastianw@company.com', 'Finance', '2021-08-30', 101000.00),
(88, 'Avery', 'Miller', 'averym@company.com', 'Marketing', '2015-09-15', 93000.00),
(89, 'Isaac', 'Jenkins', 'isaacj@company.com', 'Engineering', '2016-10-10', 98000.00),
(90, 'Sofia', 'Perry', 'sofiap@company.com', 'HR', '2017-11-20', 90000.00),
(91, 'Elijah', 'Jordan', 'elijahj@company.com', 'Finance', '2018-12-15', 102000.00),
(92, 'Mila', 'Fisher', 'milaf@company.com', 'Marketing', '2019-01-05', 94000.00),
(93, 'Jack', 'Hamilton', 'jackh@company.com', 'Engineering', '2020-02-20', 99000.00),
(94, 'Chloe', 'Wright', 'chloew@company.com', 'HR', '2021-03-15', 91000.00),
(95, 'Owen', 'Anderson', 'owena@company.com', 'Finance', '2015-04-25', 103000.00),
(96, 'Aubrey', 'Bell', 'aubreyb@company.com', 'Marketing', '2016-05-30', 95000.00),
(97, 'Carter', 'Torres', 'cartert@company.com', 'Engineering', '2017-06-10', 100000.00),
(98, 'Lillian', 'Barnes', 'lillianb@company.com', 'HR', '2018-07-25', 92000.00),
(99, 'Victoria', 'Brooks', 'victoriab@company.com', 'Finance', '2019-08-30', 104000.00),
(100, 'Penelope', 'Reyes', 'peneloper@company.com', 'Marketing', '2020-09-15', 96000.00);
