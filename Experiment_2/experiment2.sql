
CREATE TABLE EMPLOYEE (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(30) NOT NULL,
    department VARCHAR(30) NOT NULL,
    salary INT NOT NULL,
    joining_date DATE
);
INSERT INTO EMPLOYEE (emp_id, emp_name, department, salary, joining_date) VALUES
(1,'RAHUL','HR',25000,DATE '2022-01-10'),
(2,'ANITA','HR',32000,DATE '2021-05-12'),
(3,'AMIT','IT',45000,DATE '2020-03-15'),
(4,'NEHA','IT',38000,DATE '2022-07-20'),
(5,'ROHAN','SALES',18000,DATE '2023-02-05'),
(6,'PRIYA','SALES',28000,DATE '2021-11-18'),
(7,'KARAN','FINANCE',52000,DATE '2019-09-30'),
(8,'SIMRAN','FINANCE',48000,DATE '2020-12-25');
SELECT department, AVG(salary) AS avg_salary
FROM EMPLOYEE
GROUP BY department;

SELECT department, AVG(salary) AS avg_salary
FROM EMPLOYEE
WHERE salary > 20000
GROUP BY department;

SELECT department, AVG(salary) AS avg_salary
FROM EMPLOYEE
WHERE salary > 20000
GROUP BY department
HAVING AVG(salary) > 30000;

SELECT department, AVG(salary) AS avg_salary
FROM EMPLOYEE
WHERE salary > 20000
GROUP BY department
HAVING AVG(salary) > 30000
ORDER BY avg_salary DESC;

SELECT department,
COUNT(emp_id) AS total_employees,
SUM(salary) AS total_salary,
AVG(salary) AS avg_salary,
MIN(salary) AS min_salary,
MAX(salary) AS max_salary
FROM employee
GROUP BY department 
ORDER BY department;
