select
  *
from
  students
where
  age >= 20;

select
  *
from
  students
where
  country != 'USA';

-- select students whose age is between 20 & 22
select
  *
from
  students
where
  age between 20 and 22;

-- select students from CAN, UK, AUS
select
  *
from
  students
where
  country = 'CAN'
  or country = 'UK'
  or country = 'AUS';

-- select students from CAN, UK, AUS
select
  *
from
  students
where
  country in ('CAN', 'UK', 'AUS');