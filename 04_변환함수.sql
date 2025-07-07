SELECT CAST('2023-10-01' AS DATE) AS `date_casted`
, 
       CAST('2023-10-01 12:34:56' AS DATETIME) AS `datetime_casted`,
       CAST('2023-10-01 12:34:56' AS TIME) AS `time_casted`
FROM dual;

SELECT CAST('123' AS UNSIGNED) AS `date_casted`
FROM dual;


SELECT CAST(123.456 AS SIGNED) AS int_value;
SELECT CAST(123.456 AS DECIMAL(10, 2)) AS decimal_value;
SELECT CAST('123.456' AS DECIMAL(10, 2)) AS decimal_value_from_string;
SELECT CAST('123.456' AS CHAR) AS char_value;
SELECT CAST('123.456' AS BINARY) AS binary_value;
SELECT CAST('2023-10-01' AS DATE) AS date_value,
       CAST('12:34:56' AS TIME) AS time_value,
       CAST('2023-10-01 12:34:56' AS DATETIME) AS datetime_value
FROM dual;