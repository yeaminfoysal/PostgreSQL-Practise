 -- select students who are not from uk and usa
SELECT
  *
FROM
  students
where
  country != 'UK'
  and country != 'USA';

SELECT
  *
FROM
  students
where
  not country = 'UK'
  and country = 'USA';

-- Scalar Functions (upper, lower, concat, length)
-- apply upper function 
SELECT
  upper(first_name)
FROM
  students;

-- apply concat function 
SELECT
  concat(first_name, ' ', last_name) as "Full Name"
FROM
  students;

-- apply length function 
SELECT
  length(first_name) as "First Name's Length",
  first_name
FROM
  students
  order by "First Name's Length" desc;