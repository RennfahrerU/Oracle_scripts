rem 4) Find out what is the annual salary for each employee.

--SELECT * FROM employees;

SELECT EMPLOYEE_ID AS ID, FIRST_NAME as FN, LAST_NAME AS LN, 12*SALARY AS ANNUAL_SALARY FROM EMPLOYEES;