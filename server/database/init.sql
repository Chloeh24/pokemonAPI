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
  ('The Rock', 'Hitmanlee', 1),
  ('Quacker', 'Psyduck', 2),
  ('Turtlebuddy', 'Squirtle', 3),
  ('KoreanEDMStar', 'Jigglypuff', 4),
  ('Thunderclaws', 'Pikachu', 5);

COMMIT;
