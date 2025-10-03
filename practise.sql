CREATE TABLE
  employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(20),
    department_id INT REFERENCES departments (department_id),
    salary DECIMAL(10, 2),
    hire_date DATE
  );

CREATE TABLE
  departments (
    department_id SERIAL PRIMARY KEY,
    department_name varchar(50)
  );

INSERT INTO
  departments (department_name)
VALUES
  ('Human Resources'),
  ('Information Technology'),
  ('Finance'),
  ('Marketing'),
  ('Sales'),
  ('Research and Development'),
  ('Customer Support'),
  ('Logistics'),
  ('Legal'),
  ('Administration');

INSERT INTO
  employees (employee_name, department_id, salary, hire_date)
VALUES
  ('Alice Smith', 1, 55000.00, '2021-03-15'), -- HR
  ('Bob Johnson', 2, 62000.00, '2020-07-20'), -- IT
  ('Charlie Brown', 3, 48000.00, '2022-01-10'), -- Finance
  ('Diana Prince', 4, 70000.00, '2019-11-05'), -- Marketing
  ('Ethan Hunt', 5, 58000.00, '2021-06-30'), -- Sales
  ('Fiona Davis', 6, 64000.00, '2020-02-25'), -- R&D
  ('George Miller', 7, 53000.00, '2022-09-12'), -- Customer Support
  ('Hannah Lee', 8, 75000.00, '2018-12-01'), -- Logistics
  ('Ian Clark', 9, 50000.00, '2023-04-18'), -- Legal
  ('Julia Roberts', 10, 68000.00, '2021-08-22');

-- 1. INNER JOIN to retrive employee and departments info
SELECT
  *
FROM
  employees
  join departments USING (department_id);

-- 2. Show deparments name with average salary
SELECT
  department_name,
  round(avg(salary))
FROM
  employees
  JOIN departments USING (department_id)
GROUP BY
  department_name;

-- 3. Count Employees in each deparment
SELECT
  department_name,
  count(*)
FROM
  employees
  JOIN departments USING (department_id)
GROUP BY
  department_name;

-- 4. Find the department name with heighest average salary
SELECT
  department_name,
  round(avg(salary)) AS average_salary
FROM
  employees
  JOIN departments USING (department_id)
GROUP BY
  department_name
ORDER BY
  average_salary desc
limit
  1;

-- 5. Count employees hired each year
SELECT
  extract(
    year
    from
      hire_date
  ) as hired_year,
  count(*)
FROM
  employees
GROUP BY
  hired_year;