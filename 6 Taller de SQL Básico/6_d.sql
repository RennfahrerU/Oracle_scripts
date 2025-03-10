rem d) Seleccione los empleados cuyo nombre empieza por la letra K y ordene la  proyección igual que el inmediato pasado punto con ordenamiento.

SELECT * FROM employees
WHERE FIRST_NAME LIKE 'K%'
ORDER BY FIRST_NAME, LAST_NAME;