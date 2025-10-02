 -- select students whose first name starts with 'A'
select
  *
from
  students
where
  first_name like 'A%';

-- select students whose first name starts with 'a'
select
  *
from
  students
where
  first_name Ilike 'a%';

 -- select students whose first name ends with 'a'
select
  *
from
  students
where
  first_name like '%a';

-- select students whose first name starts with 'A' and rest 4 characters
select
  *
from
  students
where
  first_name like 'A____';