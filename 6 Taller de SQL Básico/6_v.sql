rem v) Determinar los IDs y nombres de los departamentos en donde todos los  empleados ganan más de 3000 y existe al menos un jefe que gana más de 5000.

SELECT 
    d.DEPARTMENT_ID AS DEP_ID,        
    d.DEPARTMENT_NAME AS DEP_NAME     
FROM 
    departments d                     
WHERE 
    d.DEPARTMENT_ID NOT IN (         -- Excludes departments with employees whose salary is less than 3,000
        SELECT 
            e1.DEPARTMENT_ID          
        FROM 
            employees e1              
        WHERE 
            e1.SALARY <= 3000         
            AND e1.DEPARTMENT_ID IS NOT NULL  
    )
    AND EXISTS (                      -- Department has at least 1 employee
        SELECT 
            1
        FROM 
            employees e2
        WHERE 
            e2.DEPARTMENT_ID = d.DEPARTMENT_ID
    )
    AND EXISTS (                      -- At least 1 manager whose salary is > 5000
        SELECT 
            1
        FROM 
            employees e3              -- Managers
        JOIN 
            employees e4              -- Employees
        ON 
            e3.EMPLOYEE_ID = e4.MANAGER_ID  
        WHERE 
            e3.DEPARTMENT_ID = d.DEPARTMENT_ID  -- Manager in the same department
            AND e3.SALARY > 5000       
    );