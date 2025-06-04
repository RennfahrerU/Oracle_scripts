rem a) Proyecte los nombres y apellidos de los empleados que han tenido al menos un
rem cambio de trabajo (JOB)

SELECT 
    e.EMPLOYEE_ID,
    e.FIRST_NAME,
    e.LAST_NAME,
    COUNT(*) AS JOB_CHANGES
FROM 
    employees e
JOIN 
    job_history jh
ON 
    e.EMPLOYEE_ID = jh.EMPLOYEE_ID
GROUP BY 
    e.EMPLOYEE_ID,
    e.FIRST_NAME,
    e.LAST_NAME
ORDER BY 
    e.EMPLOYEE_ID;

rem b) Averigüe y proyecte cuales son los empleados que solo hayan tenido un cargo o
rem trabajo (JOB).

SELECT 
    e.EMPLOYEE_ID AS EMP_ID,           
    e.FIRST_NAME AS FIRST_NAME,        
    e.LAST_NAME AS LAST_NAME           
FROM 
    employees e                        
LEFT JOIN 
    job_history jh                     
ON 
    e.EMPLOYEE_ID = jh.EMPLOYEE_ID     
WHERE 
    jh.EMPLOYEE_ID IS NULL;            

rem c) Averigüe y proyecte cuál es la cantidad de trabajos que ha tenido cada uno de
rem los empleados.

-- Muestra la cantidad de trabajos que ha tenido cada empleado
SELECT 
    e.EMPLOYEE_ID AS EMP_ID,           
    e.FIRST_NAME AS FIRST_NAME,        
    e.LAST_NAME AS LAST_NAME,          
    COUNT(jh.EMPLOYEE_ID) + 1 AS JOB_COUNT
FROM
    employees e                        
LEFT JOIN
    job_history jh                     
ON
    e.EMPLOYEE_ID = jh.EMPLOYEE_ID     
GROUP BY
    e.EMPLOYEE_ID, 
    e.FIRST_NAME, 
    e.LAST_NAME 
ORDER BY
    e.EMPLOYEE_ID;

rem d) Proyecta los departamentos con la lista de los meses en que los empleados
rem cumplen aniversario de contratación. La lista va al frente del código del
rem departamento y está separada por comas.

SELECT 
    CASE 
        WHEN COUNT(E.employee_id) > 0 THEN 
            LISTAGG(DISTINCT TO_CHAR(E.hire_date, 'MM'), ',') WITHIN GROUP (ORDER BY TO_NUMBER(TO_CHAR(E.hire_date, 'MM'))) || ',' || D.department_id
        ELSE 
            TO_CHAR(D.department_id)
    END AS "Meses y Departamento"
FROM departments D
LEFT JOIN employees E ON D.department_id = E.department_id
GROUP BY D.department_id
ORDER BY D.department_id;