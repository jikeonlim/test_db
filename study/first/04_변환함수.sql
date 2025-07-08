SELECT 
    CAST('2023-10-01' AS DATE) AS `date_casted`,
    CAST('2023-10-01 12:34:56' AS DATETIME) AS `datetime_casted`,
    CAST('2023-10-01 12:34:56' AS TIME) AS `time_casted`,
    CAST('12:34:56' AS TIME) AS `time_casted_from_string`,
    CAST('2023-10-01' AS CHAR) AS `char_casted`,
    CAST('2023-10-01' AS BINARY) AS `binary_casted`,
    YEAR('2023-10-01') AS `year_extracted`,
    MONTH('2023-10-01') AS `month_extracted`
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




SELECT 
    CONVERT('2023-10-01' USING utf8mb4) AS `utf8mb4_converted`,
    CONVERT('2023-10-01' USING latin1) AS `latin1_converted`,
    CONVERT('2023-10-01' USING ascii) AS `ascii_converted`,
    CONVERT('2023-10-01' USING binary) AS `binary_converted`,

    CONVERT(234.56, CHAR) AS `char_converted`,
    CONVERT(234.56, BINARY) AS `binary_value`,
    CONVERT('123', UNSIGNED) AS `unsigned_converted`,
    CONVERT('123.456', DECIMAL(10, 2)) AS `decimal_converted`,
    CONVERT('123.456', SIGNED) AS `signed_converted`
FROM dual;

SELECT
    FORMAT(123456.789, 2) AS `formatted_number`,
    FORMAT(123456.789, 0) AS `formatted_number_no_decimal`,
    FORMAT(123456.789, 3) AS `formatted_number_three_decimal`,
    FORMAT(123456.789, 2, 'de_DE') AS `formatted_number_german`,
    FORMAT(123456.789, 2, 'en_US') AS `formatted_number_english`,
    FORMAT(123456.789, 2, 'fr_FR') AS `formatted_number_french`,
    FORMAT(123456.789, 2, 'ja_JP') AS `formatted_number_japanese`,
    FORMAT(123456.789, 2, 'ko_KR') AS `formatted_number_korean`
FROM dual;  





SELECT 
    DATE_FORMAT('2023-10-01', '%Y-%m-%d') AS `date_formatted_ymd`,
    DATE_FORMAT('2023-10-01', '%Y년 %m월 %d일') AS `date_formatted_korean`,
    DATE_FORMAT('2023-10-01', '%d/%m/%Y') AS `date_formatted_dmy`,

    DATE_FORMAT('2023-10-01 12:34:56', '%Y-%m-%d %H:%i:%s') AS `datetime_formatted_ymd_hms`,
    DATE_FORMAT('2023-10-01 12:34:56', '%Y년 %m월 %d일 %H시 %i분 %s초') AS `datetime_formatted_korean`,
    DATE_FORMAT('2023-10-01 12:34:56', '%d/%m/%Y %H:%i:%s') AS `datetime_formatted_dmy_hms`,

    DATE_FORMAT(STR_TO_DATE('12:34:56', '%H:%i:%s'), '%H:%i:%s') AS `time_formatted_hms`,
    DATE_FORMAT(STR_TO_DATE('12:34:56', '%H:%i:%s'), '%H시 %i분 %s초') AS `time_formatted_korean`,
    DATE_FORMAT(STR_TO_DATE('12:34:56', '%H:%i:%s'), '%H:%i') AS `time_formatted_hm`,
    DATE_FORMAT(STR_TO_DATE('12:34:56', '%H:%i:%s'), '%i분 %s초') AS `time_formatted_ms`
FROM dual;