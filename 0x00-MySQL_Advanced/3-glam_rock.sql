-- Lists all bands with Glam rock as their main style, ranked by their longevity
-- Requirements:
-- Import this table dump: metal_bands.sql.zip
-- Column names must be: band_name and lifespan (in years until 2022)
-- You should use attributes formed and split for computing the lifespan
-- The script can be executed on any database

SELECT band_name,
       IFNULL(split, 2022) - formed as lifespan
FROM
    (SELECT name as band_name, formed, split
     FROM metal_bands
     WHERE FIND_IN_SET('Glam rock', IFNULL(style, '')) > 0) AS subquery
ORDER BY lifespan DESC;
