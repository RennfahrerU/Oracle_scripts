rem p) Determinar los nombres de cada empleado junto con el grado salarial del  empleado, el grado salarial del jefe y la diferencia de grado salarial existente con su  jefe (grado del jefe – grado del empleado).

SELECT 
    e1.FIRST_NAME || ' ' || e1.LAST_NAME AS EMPLOYEE_NAME,  
    s1.GRADE AS EMPLOYEE_GRADE,                             
    s2.GRADE AS MANAGER_GRADE,                              
    NVL(s2.GRADE, 0) - s1.GRADE AS GRADE_DIFFERENCE        -- Difference between bosses and employees grades 
FROM 
    employees e1                                            -- Employees table
JOIN 
    salgrade s1                                            -- Grades table (employees)
ON 
    e1.SALARY BETWEEN s1.LOSAL AND s1.HISAL                -- Find employee grade
LEFT JOIN 
    employees e2                                           -- Employees table (bosses)
ON 
    e1.MANAGER_ID = e2.EMPLOYEE_ID                         -- Boss-Employee
LEFT JOIN 
    salgrade s2                                            -- Grades table (bosses)
ON 
    e2.SALARY BETWEEN s2.LOSAL AND s2.HISAL;               -- Find boss grade