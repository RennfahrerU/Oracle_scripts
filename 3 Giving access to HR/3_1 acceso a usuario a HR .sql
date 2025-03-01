-- Paso 1: Otorgar SELECT (ejecutar como DBA)
GRANT SELECT ON HR.employees TO usuario_prueba;

-- Paso 2: Otorgar CREATE SYNONYM (ejecutar como DBA)
GRANT CREATE SYNONYM TO usuario_prueba;