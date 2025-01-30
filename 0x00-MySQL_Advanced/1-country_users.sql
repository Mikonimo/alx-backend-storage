-- Creates a table users following these requirements:
-- With these attributes:
-- id, integer, primary key, never null, auto increment
-- email, string(255), never null, unique
-- name, string(255)
-- country, enumeration fo countries: US, CO and TN, never null(= default
-- will be the first element of the enumeration, here US)
-- If the table already exists, your script should not fail
CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255),
    country ENUM('US', 'CO', 'TN') DEFAULT 'US' NOT NULL
);
