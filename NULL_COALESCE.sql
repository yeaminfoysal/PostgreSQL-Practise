select
  *
from
  students
where
  email is NULL;


select
  coalesce(email, 'Not provided') as email
from
  students;