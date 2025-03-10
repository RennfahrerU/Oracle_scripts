rem e) Proyecte los IDs de departamentos (departments), con la cantidad de  empleados(employees), que hay en cada uno de ellos (los departamentos). 

--SELECT * FROM DEPARTMENTS;

--SELECT EMPLOYEE_ID AS ID, FIRST_NAME AS FIRST_N, LAST_NAME AS LAST_N, DEPARTMENT_ID AS DEP_ID
--FROM EMPLOYEES

SELECT DEPARTMENT_ID AS DEP_ID, COUNT(*)
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
ORDER BY DEPARTMENT_ID;
