rem r) Identificar los IDs y nombres de los distintos departamentos en donde hay al  menos dos empleados distintos que ganan más de 2500.

-- Muestra IDs y nombres de departamentos con al menos 2 empleados que ganan más de 2500
SELECT 
    d.DEPARTMENT_ID AS DEP_ID,       
    d.DEPARTMENT_NAME AS DEP_NAME    
FROM 
    employees e                      
JOIN 
    departments d                    
ON 
    e.DEPARTMENT_ID = d.DEPARTMENT_ID  
WHERE 
    e.SALARY > 2500                 
GROUP BY 
    d.DEPARTMENT_ID,               
    d.DEPARTMENT_NAME              
HAVING 
    COUNT(DISTINCT e.EMPLOYEE_ID) >= 2;  