create table
  employee_logs (
    id serial primary key,
    emp_name varchar(25),
    action varchar(25),
    action_time timestamp default now()
  );

create function
  log_employee_deletion () returns trigger language plpgsql as $$
  begin
    insert into employee_logs(emp_name, action) values (old.name, 'delete');
    return old;
  end;
  $$;

create trigger
  save_employee_delete_logs
after
  delete on employees for each row
execute
  function log_employee_deletion ();

DELETE FROM
  employees
WHERE
  id = 18