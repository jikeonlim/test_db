-- Active: 1751704507103@@127.0.0.1@3306@employees
select distinct title
from titles;


--테이블사용
USE `employees`;


SELECT *
FROM titles
WHERE title LIKE '%Engineer%';


SELECT emp_no, salary, salary *2 AS new_salary
FROM salaries
WHERE salary > 50000;

SELECT emp_no, salary, salary / 12 AS MONTHLY_SALARY
FROM salaries;

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '2000-09-25'
ORDER BY hire_date DESC;

SELECT *
FROM employees
WHERE first_name <> 'marko';




SELECT *
FROM salaries
WHERE salary BETWEEN 50000 AND 100000;

SELECT *
FROM salaries
WHERE salary <= 50000;

SELECT *
FROM employees
WHERE hire_date >= '1990-01-01'
AND hire_date <= '2000-09-25'
ORDER BY hire_date DESC;

SELECT *
FROM employees
WHERE first_name NOT IN ('marko', 'john');

SELECT *
FROM employees
WHERE gender = 'M'
AND hire_date BETWEEN '1990-01-01' AND '2000-09-25'
ORDER BY hire_date DESC;


SELECT *
FROM dept_emp
WHERE dept_no IN ('d001', 'd002', 'd003');

SELECT *
FROM dept_emp
WHERE dept_no NOT IN ('d007', 'd008', 'd009');


SELECT emp_no
FROM salaries
WHERE salary > 90000
UNION
SELECT emp_no
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '2000-09-25';

SELECT emp_no
FROM salaries
WHERE salary > 90000 AND salary < 100000;

SELECT *
FROM salaries
WHERE salary BETWEEN 50000 AND 60000;

SELECT *
FROM employees
WHERE last_name LIKE 'S%';

SELECT *
FROM employees
WHERE first_name LIKE '%s';

SELECT *
FROM employees
WHERE first_name LIKE '%s%';

select 1+1 from dual;

select ceil(12.45), ceil(-12.45)
from dual;

 select round(0.45, 0), round(0.55, 0), round(1.45, 0), round(1.55, 0)
 from dual;

 SELECT mod(3, 8), mod(8, 3), mod(8, 8)
 FROM dual;

 select pow(2, 3), pow(3, 2), pow(2, 0)
    from dual;


    select TRUNCATE(12.45, 1), TRUNCATE(-12333333.45, -1)
    from dual;

SELECT rand() FROM dual;

SELECT TRUNCATE ( (rand() * 45) + 1, 0) FROM dual;


select count(*) as  emp_no
from employees;

select  max(salary) as max_salary,
        min(salary) as min_salary
from salaries;

SELECT sum(salary) as total_salary,
       avg(salary) as avg_salary
FROM salaries;

select *
from employees;

select *
from dept_manager;