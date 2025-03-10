rem k) Proyectar el ID, nombre y grado salarial de los empleados que tienen grados  salariales 2, 4 o 5. 

--SELECT * FROM employees;

SELECT 
    e.EMPLOYEE_ID AS EMP_ID,
    e.FIRST_NAME || ' ' || e.LAST_NAME AS FULL_NAME,
    e.SALARY,
    s.GRADE AS SALARY_GRADE
FROM 
    EMPLOYEES e
JOIN 
    SALGRADE s
ON 
    e.SALARY BETWEEN s.LOSAL AND s.HISAL
WHERE
    s.GRADE IN (2,4,5);


SELECT * FROM SALGRADE;