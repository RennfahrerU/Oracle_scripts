rem n) Presentar el ID del departamento con la cantidad de empleados del  departamento que cuente con el mayor número de empleados.

SELECT 
    e.DEPARTMENT_ID AS DEP_ID,
    COUNT(*) AS EMPLOYEE_COUNT
FROM 
    employees e
GROUP BY 
    e.DEPARTMENT_ID
ORDER BY 
    EMPLOYEE_COUNT DESC
FETCH FIRST 1 ROW ONLY;

-- Fetch: Show only first # of rows