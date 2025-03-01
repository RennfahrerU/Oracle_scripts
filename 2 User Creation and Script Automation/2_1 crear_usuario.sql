rem Script
rem   crear_usuario.sql
rem Descripción
rem   Crear un usuario, asignar privilegios, y validar creación e inserción de datos
rem RELEASE DATE
rem   22-FEB-2025

rem =======================================================
rem Paso 1: Tablespace DATOS_TEST
rem =======================================================
CREATE TABLESPACE DATOS_TEST
DATAFILE 'DATOS_TEST.dbf' SIZE 200M
AUTOEXTEND ON NEXT 50M;

rem =======================================================
rem Paso 2: Crear el usuario para probar
rem =======================================================
CREATE USER usuario_prueba IDENTIFIED BY password123
DEFAULT TABLESPACE DATOS_TEST
QUOTA UNLIMITED ON DATOS_TEST;

rem =======================================================
rem Paso 3: Darle privilegios
rem =======================================================
GRANT CREATE SESSION, CREATE TABLE TO usuario_prueba;