rem h) Proyecte el número, nombre y salario de los empleados que trabajan en el departamento SALES. 

--SELECT * FROM employees;

SELECT
    d.DEPARTMENT_NAME, d.DEPARTMENT_ID
FROM
    DEPARTMENTS d;

rem Sales = 80


SELECT 
    e.employee_id AS EMP_ID,
    e.SALARY * 12 AS SALARY,
    e.first_name || ' ' || e.last_name AS FULL_NAME,
    d.department_name AS DEP_NAME
FROM 
    employees e
LEFT JOIN 
    departments d
ON 
    e.department_id = d.department_id
WHERE d.DEPARTMENT_ID = 80;