create database cdac1;
use cdac1;
create table department(
id int primary key,
name varchar(50),
age int not null);

insert into department values(1, 'adam', 22);
insert into department values(2, 'riya', 23);
insert into department values(3, 'john', 24);
select * from department;
/*waq to populate data in table location*/
CREATE TABLE location (
    id INT PRIMARY KEY,
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50)
);
INSERT INTO location VALUES
(1, 'Lucknow', 'Uttar Pradesh', 'India'),
(2, 'Delhi', 'Delhi', 'India'),
(3, 'Mumbai', 'Maharashtra', 'India');
SELECT * FROM location;

/*waq to show working of transation*/

START TRANSACTION;
INSERT INTO department VALUES (4, 'sam', 25);
SELECT * FROM department;
ROLLBACK;
SELECT * FROM department;
START TRANSACTION;
INSERT INTO department VALUES (5, 'rahul', 26);
COMMIT;
SELECT * FROM department;


-- waq to modify the salary of 104 to 25000

CREATE TABLE employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT
);

INSERT INTO employee VALUES
(101, 'John', 20000);
INSERT INTO employee VALUES
(102, 'rahul', 40000);
INSERT INTO employee VALUES
(103, 'adam', 60000);
INSERT INTO employee VALUES
(104, 'riya', 60000);
INSERT INTO employee VALUES
(105, 'piyush', 50000);
INSERT INTO employee VALUES
(106, 'kartik', 20000);

SELECT * FROM employee;

UPDATE employee
SET salary = 25000
WHERE emp_id = 104;

SELECT * FROM employee
WHERE emp_id = 104;

