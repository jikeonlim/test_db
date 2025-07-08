-- Title: 기초함수
-- Description: 기초함수에 대한 예제
-- CASE WHEN ... THEN ... ELSE ... END


SELECT
    emp_no,
    salary,
        CASE
        WHEN salary >= 80000 THEN '고급'
        WHEN salary >= 70000 THEN '중급'
        ELSE '초급'
    END AS salary_level
FROM
    salaries;

SELECT *
    ,IF(gender = 'M', '남성', '여성') 성별
    ,IF(hire_date < '2000-01-01', '2000년 이전', '2000년 이후') 근무시기
FROM employees;

-- VERSION(), DATABASE(), USER(), CURRENT_USER(), CURRENT_DATE(), NOW(), CURDATE(), CURTIME()

SELECT
    VERSION() AS version,
    DATABASE() AS database_name,
    USER() AS `current_user`,
    CURRENT_USER() AS current_user_full,
    CURRENT_DATE() AS `current_date`,
    NOW() AS current_datetime,
    CURDATE() AS current_date_only,
    CURTIME() AS current_time_only;

    