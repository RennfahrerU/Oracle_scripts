rem g) Proyecte el ID y nombre de los empleados con el nombre del departamento en el que trabaja. 

--SELECT * FROM employees;

SELECT 
    e.employee_id AS EMP_ID,
    e.first_name || ' ' || e.last_name AS FULL_NAME,
    d.department_name AS DEP_NAME
FROM 
    employees e
LEFT JOIN 
    departments d
ON 
    e.department_id = d.department_id;

/* ----- TESTING ----- */

/* SELECT 
    e.employee_id AS id_empleado,
    e.first_name || ' ' || e.last_name AS nombre_empleado,
    d.department_name AS nombre_departamento
FROM 
    employees e
INNER JOIN 
    departments d
ON 
    e.department_id = d.department_id; */




