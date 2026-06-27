CREATE DATABASE company;

USE company;

CREATE TABLE employees(
emp_id  INT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
department VARCHAR(100),
salary INT ,
city VARCHAR(100)
);

INSERT INTO employees VALUES
(1,'maneesh','IT',50000,'Hyderabad'),
(2,'Ajay','IT',60000,'Hyderabad'),
(3,'Sita','HR',40000,'Bangalore'),
(4,'Ram','HR',45000,'Hyderabad'),
(5,'Kiran','IT',55000,'Chennai'),
(6,'Neha','Sales',30000,'Hyderabad'),
(7,'Arun','Sales',35000,'Chennai'),
(8,'Pooja','HR','42000','Bangalore');

SELECT department,SUM(salary) FROM employees GROUP BY department;

SELECT city , COUNT(name) FROM employees GROUP BY city;

SELECT department,MIN(salary) FROM employees GROUP BY department;

SELECT department,COUNT(name) AS employees , AVG(salary) AS avg_salary 
FROM employees GROUP BY department;

SELECT city , MAX(salary) FROM employees GROUP BY city;

SELECT department,city,COUNT(name) AS employees 
FROM employees GROUP BY department,city;

SELECT department,SUM(salary) AS total_salary,MAX(salary) AS highest_salary,
MIN(salary) AS lowest_salary,AVG(salary) AS avg_salary,COUNT(name) AS employees 
FROM employees GROUP BY department;









