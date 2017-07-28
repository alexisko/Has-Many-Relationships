CREATE USER has_many_user;

CREATE DATABASE has_many_blogs WITH OWNER has_many_user;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(90) NOT NULL,
  first_name VARCHAR(90) DEFAULT NULL,
  last_name VARCHAR(90) DEFAULT NULL,
  created_at timestamp with time zone NOT NULL DEFAULT NOW(),
  updated_at timestamp with time zone NOT NULL DEFAULT NOW()
);

DROP TABLE IF EXISTS posts;

CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  title VARCHAR(180) DEFAULT NULL,
  url VARCHAR(510) DEFAULT NULL,
  content TEXT DEFAULT NULL,
  created_at timestamp with time zone NOT NULL DEFAULT NOW(),
  updated_at timestamp with time zone NOT NULL DEFAULT NOW(),
  user_id INTEGER NOT NULL REFERENCES users(id)
);

DROP TABLE IF EXISTS comments;

CREATE TABLE comments (
  id SERIAL PRIMARY KEY,
  body VARCHAR(510) DEFAULT NULL,
  created_at timestamp with time zone NOT NULL DEFAULT NOW(),
  updated_at timestamp with time zone NOT NULL DEFAULT NOW(),
  user_id INTEGER NOT NULL REFERENCES users(id),
  post_id INTEGER NULL NULL REFERENCES posts(id)
);
