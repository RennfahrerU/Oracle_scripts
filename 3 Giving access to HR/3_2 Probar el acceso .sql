-- Paso 3: Crear el sinónimo
CREATE SYNONYM empleados_hr FOR HR.employees;

-- Paso 4: Consultar usando el sinónimo
SELECT * FROM empleados_hr WHERE ROWNUM <= 5;