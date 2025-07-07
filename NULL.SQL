INSERT INTO test0707 (emp_no, name, salary, commision_pct, bonus)
VALUES (1001, '정국'  , 3300000, 0.8, 2400000 ),
       (1002, '뷔'    , 2500000, 0.1, NULL),
       (1003, '지민'  , 3200000, NULL, NULL), 
       (1004, '리사'  , 4100000, 0.2, NULL),
       (1005, '제니'  , 5400000, NULL, NULL),
       (1006, '카리나', 2200000, NULL, 1000000),
       (1007, '장원영', 3500000, 0.4, 1400000),
       (1008, '안유진', 4200000, 0.5, 3000000),
       (1009, '태용',   6400000, NULL, 5000000),
       (1010, '이병헌', 1200000, 0.4, 2000000),
       (1011, '송강호', 2700000, 0.1, 1000000),
       (1012, '전도연', 3800000, 0.1, 4000000),
       (1013, '김태리', 4300000, 0.3, 9000000),
       (1014, '박서준', 5100000, 0.2, 2000000);

CREATE TABLE IF NOT EXISTS test0707 (
    emp_no INT PRIMARY KEY,
    name VARCHAR(45) NOT NULL,
    salary INT NOT NULL,
    commision_pct DECIMAL(3,2),
    bonus INT
);

SELECT *
FROM test0707;

SELECT emp.*,
salary + (salary * IFNULL(commision_pct, 0)) AS commision,
IFNULL(bonus, 0) AS bonus_amount
FROM test0707 emp
WHERE commision_pct IS NOT NULL OR bonus IS NOT NULL
ORDER BY commision DESC
;

-- NULLIF()
SELECT emp_no, name, salary, commision_pct, bonus,
    NULLIF(commision_pct, 0) AS commision_pct_non_zero,
    NULLIF(bonus, 0) AS bonus_non_zero
FROM test0707
WHERE commision_pct IS NOT NULL OR bonus IS NOT NULL
ORDER BY commision_pct_non_zero DESC, bonus_non_zero DESC
;


SELECT emp_no, salary, NULLIF(salary, 3300000)
FROM test0707
;


-- COALESCE()
SELECT emp_no, name, salary, commision_pct, bonus,
    COALESCE(commision_pct, 0) AS commision_pct_non_null,
    COALESCE(bonus, 0) AS bonus_non_null,
    bonus*commision_pct + salary * 12 AS annual_salary

FROM test0707
WHERE commision_pct IS NOT NULL OR bonus IS NOT NULL
ORDER BY commision_pct_non_null DESC, bonus_non_null DESC
;