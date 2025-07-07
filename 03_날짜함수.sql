SELECT now() AS `current_datetime`,
       curdate() AS `current_date`,
       curtime() AS `current_time`;

SELECT emp_no,
       first_name,
       last_name,
       hire_date,
       DATE_FORMAT(hire_date, '%Y-%m-%d') AS formatted_hire_date,
       DATE_FORMAT(hire_date, '%Y년 %m월 %d일') AS korean_hire_date,
       DATE(hire_date) AS date_only,
       YEAR(hire_date) AS hire_year,
         MONTH(hire_date) AS hire_month,
         DAY(hire_date) AS hire_day

FROM employees;


SELECT *
FROM employees
WHERE MONTH(hire_date) = MONTH(CURDATE()) 
;

SELECT *
FROM employees
WHERE DAY(birth_date) = DAY(CURDATE())
    
;

SELECT YEAR(DATE_ADD( NOW(), INTERVAL 5 YEAR )) AS `next_year`
, 
       MONTH(DATE_ADD( NOW(), INTERVAL 5 MONTH )) AS `next_month`, 
       DAY(DATE_ADD( NOW(), INTERVAL 5 DAY )) AS `next_day`
FROM dual;


SELECT *FROM employees
WHERE
    YEAR(DATE_ADD(hire_date, INTERVAL 30 YEAR)) <= YEAR(NOW());

SELECT *
FROM employees
WHERE
    TIMESTAMPDIFF(YEAR, hire_date, NOW()) >= 30;

SELECT *
FROM employees
WHERE
    NOW() - INTERVAL 30 YEAR >= hire_date;

SELECT *
FROM employees
WHERE
    hire_date <= NOW() - INTERVAL 10 YEAR;

SELECT STR_TO_DATE('2023-10-01', '%Y-%m-%d') AS `date_from_string`
FROM dual;




SELECT 
    DATE_SUB('2023-10-01', INTERVAL 10 WEEK) AS `date_subtracted`,
    DATE_ADD('2023-10-01', INTERVAL 10 WEEK) AS `date_added`,
    DATE_SUB('2023-10-01', INTERVAL 10 MONTH) AS `month_subtracted`,
    DATE_ADD('2023-10-01', INTERVAL 10 MONTH) AS `month_added`,
    DATE_SUB('2023-10-01', INTERVAL 10 YEAR) AS `year_subtracted`,
    DATE_ADD('2023-10-01', INTERVAL 10 YEAR) AS `year_added`

FROM dual;

SELECT * ,
    TIMESTAMPDIFF(YEAR, hire_date, CURDATE()) AS years_of_service,
    TIMESTAMPDIFF(YEAR, birth_date, CURDATE()) AS age
FROM employees
ORDER BY age DESC;


SELECT TIMESTAMPDIFF(YEAR, '2020-03-15', CURDATE()) AS years_of_service;
