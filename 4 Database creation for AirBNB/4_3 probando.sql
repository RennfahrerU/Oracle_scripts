SELECT table_name FROM user_tables;

rem Claves primarias
SELECT constraint_name, table_name 
FROM user_constraints 
WHERE constraint_type = 'P';

rem Claves foráneas
SELECT constraint_name, table_name, r_constraint_name 
FROM user_constraints 
WHERE constraint_type = 'R';