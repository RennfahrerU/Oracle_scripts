rem j) Obtenga el número y nombre de cada empleado junto con su salario y grado  salarial (Si falta la tabla de grado salarial, crearla y poblarla conforme se estudió el  ejemplo de non-equijoin). 

-- What are non-equi-joins?
-- https://docs.oracle.com/html/B10270_01/joins.htm

SELECT * FROM employees;

-- Creating table
CREATE TABLE SALGRADE(
    grade number PRIMARY KEY,
    losal NUMBER,
    hisal NUMBER
)

-- Populating
INSERT INTO salgrade (grade, losal, hisal) VALUES (1, 2100,4000);
INSERT INTO salgrade (grade, losal, hisal) VALUES (2, 4001,6000);
INSERT INTO salgrade (grade, losal, hisal) VALUES (3, 6001,8000);
INSERT INTO salgrade (grade, losal, hisal) VALUES (4, 8001,12000);
INSERT INTO salgrade (grade, losal, hisal) VALUES (5, 12001,18000);
INSERT INTO salgrade (grade, losal, hisal) VALUES (6, 18001,24000);
COMMIT;

-- Checking
SELECT * FROM SALGRADE;

-- Formulating the Query

SELECT 
    e.EMPLOYEE_ID AS EMP_ID,
    e.FIRST_NAME || ' ' || e.LAST_NAME AS FULL_NAME,
    e.SALARY,
    s.GRADE AS SALARY_GRADE
FROM 
    EMPLOYEES e
JOIN 
    SALGRADE s
ON 
    e.SALARY BETWEEN s.LOSAL AND s.HISAL;

/* DELETE FROM SALGRADE; */

/* SELECT
    MIN(SALARY) AS MIN,
    MAX(SALARY) AS MAX,
    AVG(SALARY) AS AVERAGE
FROM EMPLOYEES; */