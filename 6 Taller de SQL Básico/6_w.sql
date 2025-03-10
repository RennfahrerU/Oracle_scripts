rem w) Presentar los IDs y nombres de los empleados que no son del departamento 80 y que ganan más que cualquiera de los empleados del departamento 80.

SELECT 
    e.EMPLOYEE_ID AS EMP_ID,           
    e.FIRST_NAME || ' ' || e.LAST_NAME AS EMP_NAME  
FROM 
    employees e                        
WHERE 
    e.DEPARTMENT_ID != 80              
    AND e.SALARY > (                   
        SELECT 
            MAX(e2.SALARY)             
        FROM 
            employees e2               -- Employees (80)
        WHERE 
            e2.DEPARTMENT_ID = 80      -- Only Department 80
    );