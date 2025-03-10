rem o) Encuentre los jefes (manager), presentando su ID y nombre, y el nombre del  departamento donde trabajan.

SELECT DISTINCT 
    e1.EMPLOYEE_ID AS MAN_ID,
    e1.FIRST_NAME || ' ' || e1.LAST_NAME AS MAN_NAME,
    d.DEPARTMENT_NAME AS DEP_NAME
FROM 
    employees e1 -- Bosses
JOIN 
    employees e2 -- SELF-JOIN with employees
ON 
    e1.EMPLOYEE_ID = e2.MANAGER_ID -- EMP_ID == MAN_ID
LEFT JOIN 
    departments d -- JOIN WITH DEPARTMENTS
ON 
    e1.DEPARTMENT_ID = d.DEPARTMENT_ID; -- Manager DEP_ID