 -- Count students by country
select
  country,
  count(*)
from
  students
group by
  country;

-- Courses with more than 4 students
select
  course,
  count(*)
from
  students
group by
  course
having
  count(*) >= 3;

-- Countries where average student age is greater than 21
select
  country,
  avg(age)
from
  students
group by
  country
having
  avg(age) > 21;