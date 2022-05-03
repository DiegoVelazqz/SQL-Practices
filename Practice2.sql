
COPY TABLE_NAME
FROM '/tmp/us_counties_export.csv'
WITH (FORMAT CSV, HEADER);

--  Importing data.
--  Create a table.
--  Make the data (file) available for the postgres user (Copy into /tmp folder).
-- Copy the files.
-- It is possible to indicate the columns to import.
-- It is possible to import only some records using where.
-- It is possible to import to a temporary table and do an insert from there.

COPY us_counties_pop_est_2019
TO '/tmp/us_counties_export.txt'
WITH (FORMAT CSV, HEADER, DELIMITER '|');

-- Export data to a txt file.
-- Export an entire table.
-- Export selected columns from a table.
-- Export query results.