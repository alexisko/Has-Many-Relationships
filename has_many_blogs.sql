CREATE USER has_many_user;

CREATE DATABASE has_many_blogs WITH OWNER has_many_user;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id SERIAL,
  username VARCHAR(90) NOT NULL,
  first_name VARCHAR(90) DEFAULT NULL,
  last_name VARCHAR(90) DEFAULT NULL,
  created_at timestamp with time zone NOT NULL DEFAULT NOW(),
  updated_at timestamp with time zone NOT NULL DEFAULT NOW()
);



