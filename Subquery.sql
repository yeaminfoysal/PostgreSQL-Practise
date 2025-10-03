CREATE TABLE
  employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(20),
    department VARCHAR(20),
    salary INT
  );

INSERT INTO
  employees (name, department, salary)
VALUES
  ('Alice', 'HR', 40000),
  ('Bob', 'Finance', 55000),
  ('Charlie', 'IT', 60000),
  ('David', 'Marketing', 45000),
  ('Eve', 'Finance', 52000),
  ('Frank', 'IT', 70000),
  ('Grace', 'HR', 38000),
  ('Helen', 'Marketing', 48000),
  ('Ian', 'IT', 65000),
  ('Jack', 'Finance', 60000);

-- Find the highest salary
SELECT
  max(salary)
from
  employees;

-- Find employee which gets the highest salary
SELECT
  *
FROM
  employees
WHERE
  salary = (
    SELECT
      max(salary)
    from
      employees
  );

-- Find employees who earn more than the average salary 
SELECT
  *
FROM
  employees
WHERE
  salary > (
    SELECT
      avg(salary)
    from
      employees
  );

-- Employee who get the highest salary in HR department
SELECT
  *
FROM
  employees
WHERE
  salary = (
    SELECT
      max(salary)
    from
      employees
    WHERE
      department = 'HR'
  );