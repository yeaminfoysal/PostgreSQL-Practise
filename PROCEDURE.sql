CREATE procedure
  delete_emp_by_id (emp_id int) LANGUAGE plpgsql AS $$
  begin 
    DELETE FROM employees WHERE id = emp_id;
  end;
  $$;

call
  delete_emp_by_id (9);



CREATE PROCEDURE
  increase_low_salary (department_name VARCHAR(50)) LANGUAGE plpgsql as $$
  declare 
  avg_salary int;
  begin 
    SELECT avg(salary) into avg_salary from employees 
      WHERE department = department_name;

    UPDATE employees set salary = salary  * 1.1
    WHERE department = department_name and salary < avg_salary;
  end;
  $$;

call
  increase_low_salary ('IT');