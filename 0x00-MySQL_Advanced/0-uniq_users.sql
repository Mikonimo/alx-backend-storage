-- Creates a table users with these attributes:
-- id, integer, primary key, never null, auto_increment
-- email, string(255), never null, unique
-- name, strint(255)
-- if the table already exists, your script should not fail

CREATE TABLE IF NOT EXISTS users (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255)
);
