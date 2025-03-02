rem 8) Make a projection like the previous one, but adding the employee’s salary formatted using asterisks to complete the 10 character mask.

--SELECT * FROM employees;

SELECT EMPLOYEE_ID AS ID, FIRST_NAME as FIRST_N, LAST_NAME AS LAST_N, LPAD(SALARY, 10, '*')
FROM EMPLOYEES
ORDER BY LAST_NAME; --DESC