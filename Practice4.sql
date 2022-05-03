-- Join and Union

-- Select Join: Joining columns of two tables.
-- Inner Join: Elements matching the conditional.
-- Left Join: Elements matching the conditional and left conditional.
-- Right Join: Elements matching the conditional and right conditional.
-- Full Outer Join: Showing elements that do not meet the condition.
-- Cross Join: Joining rows with every element from the other table.
-- Union: Combining query results
-- Customizing union.
-- Intersect: Elements that intersect in the two tables.
-- Except: Elements that are excluded from the other table.

SELECT *
FROM employees JOIN departments
ON employees.dept_id = departments.dept_id
ORDER BY employees.dept_id;



SELECT *
FROM district_2020 INNER JOIN district_2035
ON district_2020.id = district_2035.id
ORDER BY district_2020.id;



SELECT *
FROM district_2020 LEFT JOIN district_2035
ON district_2020.id = district_2035.id
ORDER BY district_2020.id;



SELECT *
FROM district_2020 RIGHT JOIN district_2035
ON district_2020.id = district_2035.id
ORDER BY district_2035.id;



SELECT *
FROM district_2020 FULL OUTER JOIN district_2035
ON district_2020.id = district_2035.id
ORDER BY district_2020.id;



SELECT *
FROM district_2020 CROSS JOIN district_2035
ORDER BY district_2020.id, district_2035.id;



SELECT * FROM district_2020
UNION
SELECT * FROM district_2035
ORDER BY id;



SELECT '2020' AS year,
       school_2020 AS school
FROM district_2020

UNION ALL

SELECT '2035' AS year,
       school_2035
FROM district_2035
ORDER BY school, year;



SELECT * FROM district_2020
INTERSECT
SELECT * FROM district_2035
ORDER BY id;



SELECT * FROM district_2020
EXCEPT
SELECT * FROM district_2035
ORDER BY id;