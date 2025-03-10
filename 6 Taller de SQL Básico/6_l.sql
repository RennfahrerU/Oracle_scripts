rem l) Obtener el ID del departamento con el promedio salarial ordenado de mayor a  menor. 

SELECT 
    e.DEPARTMENT_ID AS DEP_ID,
    AVG(e.SALARY) AS SAL_AVG
FROM 
    employees e
GROUP BY 
    e.DEPARTMENT_ID
ORDER BY 
    SAL_AVG DESC;