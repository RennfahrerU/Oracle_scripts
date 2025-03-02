rem 5) Find out for employees with a firt_name that contains an “r” character.

--SELECT * FROM employees;

SELECT EMPLOYEE_ID AS ID, FIRST_NAME as FN, LAST_NAME AS LN
FROM EMPLOYEES 
WHERE FIRST_NAME LIKE '%r%';

/* SELECT EMPLOYEE_ID AS ID, FIRST_NAME as FN, LAST_NAME AS LN
FROM EMPLOYEES 
WHERE FIRST_NAME LIKE '%xa%'; */