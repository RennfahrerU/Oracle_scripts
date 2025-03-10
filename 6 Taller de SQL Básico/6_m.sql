rem m) Proyectar el nombre del departamento con el promedio salarial ordenado de  mayor a menor.

SELECT 
    d.DEPARTMENT_NAME AS DEP_NAME,
    AVG(e.SALARY) AS SAL_AVG
FROM 
    employees e
LEFT JOIN 
    departments d
ON 
    e.DEPARTMENT_ID = d.DEPARTMENT_ID
GROUP BY 
    d.DEPARTMENT_NAME
ORDER BY 
    SAL_AVG DESC;