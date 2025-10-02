-- Distinct
select distinct
  country
from
  students;

-- Select students from the USA
select
  *
from
  students
where
  country = 'USA';

-- Select students with A grade
select
  *
from
  students
where
  grade = 'A';