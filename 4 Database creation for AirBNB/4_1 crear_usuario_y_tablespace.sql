
rem =======================================================
rem Paso 1: Tablespace AIR_BNB
rem =======================================================
CREATE TABLESPACE AIR_BNB
DATAFILE 'AIR_BNB.dbf' SIZE 200M
AUTOEXTEND ON NEXT 50M;

rem =======================================================
rem Paso 2: Crear el usuario para usarla
rem =======================================================
CREATE USER airbnb_dev IDENTIFIED BY password123
DEFAULT TABLESPACE AIR_BNB
QUOTA UNLIMITED ON AIR_BNB;

rem =======================================================
rem Paso 3: Darle privilegios
rem =======================================================
GRANT CREATE SESSION, CREATE TABLE TO airbnb_dev;