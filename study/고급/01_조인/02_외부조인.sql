SELECT *
FROM test0707
;


SELECT *
FROM test0707_dept
;

CREATE TABLE test0707_dept (
    `no` INT,
    `name` VARCHAR(50)
);

INSERT INTO test0707_dept (no, name) VALUES
(1, '개발팀'),
(2, '인사팀'),
(3, '영업팀'),
(4, '회계팀'),
(5, NULL);




TRUNCATE TABLE test0707_dept;

SELECT *
FROM test0707 emp
     LEFT JOIN test0707_dept dept 
     ON emp.dept_no = dept.no
;

SELECT 
emp.emp_no no,
emp.name,
dept.name
FROM test0707 emp
     LEFT JOIN test0707_dept dept 
     ON emp.dept_no = dept.no
;

SELECT 
emp.emp_no no,
emp.name,
dept.name
FROM test0707 emp
     RIGHT JOIN test0707_dept dept 
     ON emp.dept_no = dept.no
;

-- LEFT JOIN
SELECT 
emp.emp_no no,
emp.name,
dept.name
FROM test0707 emp
     LEFT JOIN test0707_dept dept 
     ON emp.dept_no = dept.no
UNION
SELECT 
emp.emp_no no,
emp.name,
dept.name
FROM test0707 emp
     RIGHT JOIN test0707_dept dept 
     ON emp.dept_no = dept.no;
