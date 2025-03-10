rem q) Averiguar los IDs y nombres de los distintos departamentos en donde hay al  menos un empleado que gana más de 3000 (Que no hayan tuplas repetidas). 

SELECT DISTINCT 
    d.DEPARTMENT_ID AS DEP_ID,       
    d.DEPARTMENT_NAME AS DEP_NAME    
FROM 
    employees e                      
JOIN 
    departments d                    
ON 
    e.DEPARTMENT_ID = d.DEPARTMENT_ID  
WHERE 
    e.SALARY > 3000;                 