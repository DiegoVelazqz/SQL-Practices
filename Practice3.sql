-- Math in SQL.

-- Basic operations.
-- Addition.
-- Subtraction.
-- Multiplication.
-- Division.
-- Module Division.

-- Work with decimal, Exponents and Factorials.
-- Exponentiation.
-- Square root.
-- Factorial.


-- Order of operations.

-- Percentiles.



SELECT 2 + 2;    -- addition
SELECT 11.0 / 6; -- decimal division
SELECT (7 + 8) * 9;	-- answer: 135
SELECT
    percentile_cont(.5)
    WITHIN GROUP (ORDER BY numbers),
    percentile_disc(.5)
    WITHIN GROUP (ORDER BY numbers)
FROM percentile_test;

SELECT sum(pop_est_2019) AS county_sum,
       round(avg(pop_est_2019), 0) AS county_average,
       percentile_cont(.5)
       WITHIN GROUP (ORDER BY pop_est_2019) AS county_median
FROM us_counties_pop_est_2019;




