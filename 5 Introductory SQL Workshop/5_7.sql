rem 7) Make a projection of employee’s first_name and last_name and order it ascending, taking into account the last_name as the first order key.

--SELECT * FROM employees;

SELECT EMPLOYEE_ID AS ID, FIRST_NAME as FIRST_N, LAST_NAME AS LAST_N
FROM EMPLOYEES
ORDER BY LAST_NAME; --DESC