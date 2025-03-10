rem i) Igual al anterior pero ordenado de mayor a menor salario. 

--SELECT * FROM employees;

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
WHERE d.DEPARTMENT_ID = 80
ORDER BY e.SALARY DESC;