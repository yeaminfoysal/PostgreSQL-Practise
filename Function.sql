CREATE FUNCTION
  emp_count () returns int LANGUAGE SQL as $$
  SELECT count(*) from employees;
  $$;

SELECT
  emp_count ();



CREATE FUNCTION
  delete_emp_id (emp_id int) returns void LANGUAGE SQL as $$
  DELETE FROM employees WHERE id = emp_id;
  $$;

SELECT
  delete_emp_id (10);