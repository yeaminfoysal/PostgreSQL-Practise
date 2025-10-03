CREATE TABLE
  users (id SERIAL PRIMARY KEY, username VARCHAR(25));

INSERT INTO
  users (username)
VALUES
  ('akash'),
  ('batash'),
  ('sagor'),
  ('nodi');

CREATE TABLE
  posts (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INT REFERENCES users (id)
  );

INSERT INTO
  posts (title, user_id)
VALUES
  ('Enjoying a sunny day with akash!', 2),
  ('Batash just shared an amazing recipe!', 1),
  ('Exploring advantures with Sagor!', 4),
  ('How beautifull is Nodi!', 4),
  ('Enjoying a sunny day with akash!');

-- Inner JOIN
select
  title,
  username
from
  posts
  join users on posts.user_id = users.id;

-- Inner JOIN & alais
select
  p.id,
  title,
  username
from
  posts as p
  join users as u on p.user_id = u.id;

-- LEFT JOIN & alais
select
  *
from
  posts as p
  LEFT join users as u on p.user_id = u.id;

-- RIGHT JOIN & alais
SELECT
  *
FROM
  posts AS p
  RIGHT JOIN users AS u ON p.user_id = u.id;

-- FULL JOIN & alais
SELECT
  *
FROM
  posts AS p
  FULL JOIN users AS u ON p.user_id = u.id;

-- create & insert
create table
  employees (
    id int,
    name varchar(25),
    dept_id int
  );

insert into
  employees
values
  (1, 'John Doe', 101),
  (2, 'Jane Smith', 102);

-- create
create table
  departments (dept_id int, name varchar(25));

INSERT INTO
  departments
VALUES
  (101, 'Human Resources'),
  (102, 'Marketing');

-- CROSS JOIN
SELECT
  *
FROM
  employees
  CROSS JOIN departments;

-- NATURAL JOIN
SELECT
  *
FROM
  employees
  NATURAL JOIN departments;