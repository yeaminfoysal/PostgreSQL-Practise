create table
  employe (id serial, name varchar(50), age int);


-- Renaming table name
alter table
  employe
rename to
  employee;


-- Add Column
alter table
  employee
add column
  email varchar(50);


-- drop Column
alter table
  employee
drop column
  email;


-- Rename Column
alter table
  employee
rename column
  name to user_name;


-- Modify Constraint
alter table
  employee
alter column
  user_name
type
  varchar(30);


-- Drop Constraint
alter table
  employee
alter column
  email
drop not null;


-- Add Constraint
alter table
  employee
alter column
  email
set not null;


-- Set Default value
alter table
  employee
alter column
  email
set default
  'example@gmail.com';


insert into
  employee (user_name, age)
values
  ('ariyan', 21);


-- Remove Default
alter table
  employee
alter column
  email
drop default;


-- Add Constraint (table lavel constraint)
alter table
  employee
add
  constraint unique_employee_email unique (email);


alter table
  employee
add
  constraint pk_employee_id primary key (id);


-- Drop Constraint (table lavel constraint)
alter table
  employee
drop
  constraint unique_employee_email;