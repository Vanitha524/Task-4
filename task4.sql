Create database Employee1;

CREATE TABLE employee1 (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    experience INT
);

INSERT INTO employee1 (emp_id, name, department, salary, experience) VALUES
(1, 'Ravi Kumar', 'HR', 45000, 5),
(2, 'Priya Singh', 'IT', 60000, 4),
(3, 'Manoj Das', 'Finance', 55000, 6),
(4, 'Anita Verma', 'IT', 65000, 7),
(5, 'Karan Patel', 'HR', 40000, 3),
(6, 'Neha Gupta', 'Finance', 58000, 8);

SELECT COUNT(*) AS total_employees
FROM employee1;

SELECT AVG(salary) AS average_salary
FROM employee1;

SELECT department, SUM(salary) AS total_salary
FROM employee1
GROUP BY department;

SELECT department, AVG(experience) AS avg_experience
FROM employee1
GROUP BY department;

SELECT department, SUM(salary) AS total_salary
FROM employee1
GROUP BY department
HAVING SUM(salary) > 100000;

