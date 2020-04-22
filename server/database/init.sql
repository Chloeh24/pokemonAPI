BEGIN;

  DROP TABLE IF EXISTS users, dogs
  CASCADE;

CREATE TABLE users
(
  id SERIAL PRIMARY KEY,
  email VARCHAR(255) NOT NULL,
  name VARCHAR(255),
  password VARCHAR(255)
);

CREATE TABLE dogs
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  breed VARCHAR(255),
  owner INTEGER REFERENCES users(id)
);

INSERT INTO users
  (email, name, password)
VALUES
  ('Gregor@oli.com', 'VincentvanGregor', 'password123'),
  ('Joeteon@oli.com', 'Joe', 'password123'),
  ('Alachlozam@oli.com', 'Chloe', 'password123'),
  ('Chansey@oli.com', 'Hannah', 'password123'),
  ('Fuzzball@oli.com', 'Vatsal', 'password123'
)
;

INSERT INTO dogs
  (name, breed, owner)
VALUES
  ('Hitmanlee', 'Fighting', 1),
  ('Psyduck', 'Psychic', 2),
  ('Squirtle', 'Water', 3),
  ('Jigglypuff', 'Fairy', 4),
  ('Pikachu', 'Electric', 5);

COMMIT;
