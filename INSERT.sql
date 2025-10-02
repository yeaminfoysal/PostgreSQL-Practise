 -- Create a Table
create table
  person (
    id serial primary key,
    username varchar(50) unique,
    email varchar(50) unique,
    age int check (age >= 18),
    isActive boolean default true
  )
  
-- Single Row insert
insert into
  person (id, username, email, age)
values
  (1, 'yeamin', 'yeaminfoysal14@gmail.com', 21);

-- Multiple Row insert
insert into
  person (username, email, age)
values
  ('foysal', 'foysal@gmail.com', 21),
  ('ahmed', 'ahmed@gmail.com', 21),
  ('zamil', 'zamil@gmail.com', 21);

-- Without column insert
insert into
  person
values
  (6, 'hasan', 'hasan@gmail.com', 21);