rem s) Encontrar los IDs y nombres de los empleados que ganan más dinero que su  respectivo jefe.

SELECT 
    e1.EMPLOYEE_ID AS EMP_ID,   
    e1.FIRST_NAME || ' ' || e1.LAST_NAME AS EMP_NAME,
    e1.SALARY AS EMP_SALARY,
    e2.SALARY AS MAN_SALARY
FROM 
    employees e1                       
JOIN 
    employees e2                       
ON 
    e1.MANAGER_ID = e2.EMPLOYEE_ID     
WHERE 
    e1.SALARY > e2.SALARY;             