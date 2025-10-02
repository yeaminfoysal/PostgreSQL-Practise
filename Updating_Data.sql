update
  students
set
  email = 'default@mail.com'
where
  email is null;

update
  students
set
  age = 25,
  blood_group = 'O-'
where
  student_id = 1;