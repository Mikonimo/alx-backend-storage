-- Lists all bands with Glam rock as their main style, ranked by their longevity
-- Requirements:
-- Import this table dump: metal_bands.sql.zip
-- Column names must be: band_name and lifespan (in years until 2022 - please use 
-- 2022 instead of YEAR(CURDATE()))
-- You should use attributes formed and split for computing the lifespan
-- The script can be executed on any database
SELECT name AS band_name,
    (2022 - formed) - IFNULL((2022 - split), 0) AS lifespan
FROM metal_bands
WHERE main_style = 'Glam rock'
ORDER BY lifespan DESC;
