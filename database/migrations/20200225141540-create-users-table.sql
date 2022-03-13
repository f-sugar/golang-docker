
-- +migrate Up
CREATE TABLE IF NOT EXISTS users (
id serial PRIMARY KEY,
name text NOT NULL,
date timestamp NOT NULL);

-- +migrate Down
DROP TABLE IF EXISTS users;