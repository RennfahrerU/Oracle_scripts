rem t) Establecer los IDs y nombres de los departamentos en donde al menos uno de  los empleados gana más de 3000 informando la cantidad de estos empleados  identificada para cada departamento. 

SELECT 
    d.DEPARTMENT_ID AS DEP_ID,        
    d.DEPARTMENT_NAME AS DEP_NAME,    
    COUNT(*) AS EMP_COUNT             
FROM 
    employees e                       
JOIN 
    departments d                     
ON 
    e.DEPARTMENT_ID = d.DEPARTMENT_ID  
WHERE 
    e.SALARY > 3000                  
GROUP BY 
    d.DEPARTMENT_ID,                 
    d.DEPARTMENT_NAME                
HAVING 
    COUNT(*) >= 1;                  