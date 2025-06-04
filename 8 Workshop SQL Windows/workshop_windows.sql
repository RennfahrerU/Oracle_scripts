rem Punto a
rem Se crea una lista de numeros y les da un rango, los valores que están duplicados
rem tienen el mismo rango
WITH Numbers AS (SELECT 1 AS x
                UNION ALL SELECT 2
                UNION ALL SELECT 2
                UNION ALL SELECT 5
                UNION ALL SELECT 8
                UNION ALL SELECT 10
                UNION ALL SELECT 10
                UNION ALL SELECT 10
                UNION ALL SELECT 11
) SELECT x, RANK() OVER (ORDER BY x ASC) AS RANK
FROM Numbers;

rem Punto b
rem A diferencia del anterior este no deja huecos en dense_rank
rem sino que lo llena en orden.

WITH Numbers AS
(SELECT 1 as x
UNION ALL SELECT 2
UNION ALL SELECT 2
UNION ALL SELECT 5
UNION ALL SELECT 8
UNION ALL SELECT 10
UNION ALL SELECT 10
)
SELECT x,
DENSE_RANK() OVER (ORDER BY x ASC) AS dense_rank
FROM Numbers;

rem Punto c
rem Son los resultados de una carrera, se toman los mejores tiempos
rem de forma ascendente y al mismo tiempo se separan estos resultados
rem entre dos categorías de edad, teniendo los mejores tiempos
rem por cada categoría.

WITH finishers AS
(SELECT 'Sophia Liu' as name,
TIMESTAMP '2016-10-18 2:51:45' as finish_time,'F30-34' as division
UNION ALL SELECT 'Lisa Stelzner', TIMESTAMP '2016-10-18 2:54:11', 'F35-39'
UNION ALL SELECT 'Nikki Leith', TIMESTAMP '2016-10-18 2:59:01', 'F30-34'
UNION ALL SELECT 'Lauren Matthews', TIMESTAMP '2016-10-18 3:01:17', 'F35-39'
UNION ALL SELECT 'Desiree Berry', TIMESTAMP '2016-10-18 3:05:42', 'F35-39'
UNION ALL SELECT 'Suzy Slane', TIMESTAMP '2016-10-18 3:06:24', 'F35-39'
UNION ALL SELECT 'Jen Edwards', TIMESTAMP '2016-10-18 3:06:36', 'F30-34'
UNION ALL SELECT 'Meghan Lederer', TIMESTAMP '2016-10-18 2:59:01', 'F30-34')
SELECT
name,
finish_time,
division,
RANK() OVER (PARTITION BY division ORDER BY finish_time ASC) AS finish_rank
FROM finishers;