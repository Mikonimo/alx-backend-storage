-- Lists all bands with Glam rock as their main style, ranked by their longevity
-- Requirements:
-- Import this table dump: metal_bands.sql.zip
-- Column names must be: band_name and lifespan (in years until 2022)
-- You should use attributes formed and split for computing the lifespan
-- The script can be executed on any database

SELECT
    band_name,
    IFNULL(2022 - formed, 0) as lifespan
FROM metal_bands
WHERE UPPER(style) LIKE '%GLAM ROCK%'
ORDER BY lifespan DESC;
