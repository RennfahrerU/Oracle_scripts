rem f) Averigüe cual es la máxima cantidad máxima de empleados que departamento alguno tenga.

--SELECT * FROM employees;

SELECT DEPARTMENT_ID AS DEP_ID,MAX(COUNT(*)) AS MAX_EMPLOYEES --COUNT(*) --MAX
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID;
