-- 1er Busqueda
SELECT * FROM teachers ORDER BY school,last_name ASC;
-- 2da Busqueda
SELECT * FROM teachers WHERE first_name LIKE 'S%' AND salary > 40000;
-- 3era Busqueda
SELECT * FROM teachers WHERE hire_date >= '2010-01-01' ORDER BY salary ASC;

