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