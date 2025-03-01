rem =======================================================
rem Paso 4: Crear tabla de prueba
rem =======================================================
CREATE TABLE prueba (
    id NUMBER PRIMARY KEY,
    nombre VARCHAR2(50)
);

rem =======================================================
rem Paso 5: Insertar datos
rem =======================================================
INSERT INTO prueba (id, nombre) VALUES (1, 'Dato de prueba');

rem =======================================================
rem Paso 6: Verificar los datos insertados
rem =======================================================
SELECT * FROM prueba;
COMMIT;