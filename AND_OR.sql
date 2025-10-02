 -- Select students from the UK OR AUS
select
  *
from
  students
where
  country = 'UK'
  or country = 'AUS';

-- Select students with grade A+ or A in physics or chemistry
select
  *
from
  students
where
  (
    grade = 'A+'
    or grade = 'A'
  )
  and (
    course = 'Physics'
    or course = 'Chemistry'
  );

-- Select students from CAN or USA and the age is 22
select
  *
from
  students
where
  (
    country = 'CAN'
    or country = 'USA'
  )
  and age = 22