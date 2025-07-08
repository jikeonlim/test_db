SELECT * FROM employees;
SELECT * FROM dept_emp;
SELECT * FROM departments;


SELECT *
FROM employees emp
,dept_emp de
,departments d
WHERE emp.emp_no = de.emp_no
;

SELECT emp.emp_no
, emp.first_name
, emp.last_name
, de.dept_no
FROM employees emp
,dept_emp de
WHERE emp.emp_no = de.emp_no
;

SELECT emp.emp_no no
, emp.first_name first_name
, emp.last_name last_name
, de.dept_no  dept_no
, d.dept_name dept_name
FROM employees emp
,dept_emp de
,departments d
WHERE emp.emp_no = de.emp_no
AND de.dept_no = d.dept_no
;


-- inner join
SELECT emp.emp_no no
, emp.first_name first_name
, emp.last_name last_name
, de.dept_no  dept_no
, d.dept_name dept_name
FROM employees emp
INNER JOIN dept_emp de ON emp.emp_no = de.emp_no
INNER JOIN departments d ON de.dept_no = d.dept_no
;