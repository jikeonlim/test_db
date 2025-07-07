SELECT 'AlohA WoRlD~!'
    ,UPPER('AlohA WoRlD~!')
    ,LOWER('AlohA WoRlD~!')
    FROM dual;

    SELECT LENGTH('AlohA WoRlD~!')
    ,CHAR_LENGTH('AlohA WoRlD~!')
    ,CHARACTER_LENGTH('AlohA WoRlD~!')
    FROM dual;

SELECT CONCAT('AlohA ', 'WoRlD~!')
    ,CONCAT('AlohA ', 'WoRlD~!', ' - MySQL')
    ,CONCAT_WS(' - ', 'AlohA', 'WoRlD~!', 'MySQL')
    FROM dual;

    SELECT
    SUBSTRING('www.sumif.kr', 1, 3) AS substring1,
    SUBSTRING('www.sumif.kr', 7) AS substring2,
    SUBSTRING('www.sumif.kr', -3) AS substring3,
    SUBSTRING('www.sumif.kr', 1, -6) AS substring4
    FROM dual;

SELECT
    LEFT('www.sumif.kr', 3) AS left_substring,
    RIGHT('www.sumif.kr', 3) AS right_substring
    FROM dual;

SELECT
    LPAD('AlohA', 10, '*') AS lpad_example,
    RPAD('WoRlD~!', 10, '*') AS rpad_example,
    LPAD('AlohA', 10, '*') AS lpad_example2,
    RPAD('WoRlD~!', 10, '*') AS rpad_example2
    FROM dual;


SELECT * FROM employees;

SELECT *, CONCAT(first_name, ' ^ ', last_name) AS full_name
FROM employees;

SELECT *, LOCATE('a', first_name) AS first_name_a_position,
    LOCATE('a', last_name) AS last_name_a_position
FROM employees;

SELECT *, INSTR(first_name, 'a') AS first_name_a_position,
    INSTR(last_name, 'a') AS last_name_a_position
FROM employees;

SELECT 'abcd@sumif.kr' AS "original_url",
    LOCATE('@', 'abcd@sumif.kr') AS "at_position"
    FROM dual;