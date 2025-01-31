-- Ranks country origins of bands, ordered by the number of (non-unique) fans
-- Requirements:
-- Import this table dump: metal_bands.sql.zip
-- Column names must be: origin and nb_fans
-- The script can be executed on any database

SELECT origin, SUM(COALESCE(fans, 0)) as nb_fans
FROM metal_bands
GROUP BY origin
ORDER BY nb_fans DESC;
