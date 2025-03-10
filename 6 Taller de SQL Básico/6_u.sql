rem u) Determinar los IDs y nombres de los departamentos en donde todos los  empleados ganan más de 3000. 

SELECT 
    d.DEPARTMENT_ID AS DEP_ID,      
    d.DEPARTMENT_NAME AS DEP_NAME    
FROM 
    departments d                     
WHERE 
    d.DEPARTMENT_ID NOT IN (          -- Excludes departments with employees whose salary is less than 3,000
        SELECT 
            e.DEPARTMENT_ID           
        FROM 
            employees e               
        WHERE 
            e.SALARY <= 3000         
            AND e.DEPARTMENT_ID IS NOT NULL 
    )
    AND EXISTS (                      -- Department has at least 1 employee
        SELECT 
            1
        FROM 
            employees e
        WHERE 
            e.DEPARTMENT_ID = d.DEPARTMENT_ID
    );