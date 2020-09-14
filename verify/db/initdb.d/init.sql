CREATE DATABASE blog;
\c blog

CREATE TABLE users (
  id SERIAL NOT NULL PRIMARY KEY,
  account_id SERIAL NOT NULL UNIQUE,
  name VARCHAR(32) NOT NULL UNIQUE,

  created_at TIMESTAMP(6) DEFAULT 'now' NOT NULL,
  updated_at TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP(6) NOT NULL
);

INSERT INTO users (name) values ('Kiwata');
INSERT INTO users (name) values ('Okuda');
INSERT INTO users (name) values ('喜綿');
