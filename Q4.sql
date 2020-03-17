

create or replace function join() returns date as $$

declare
-- employee_id integer;
-- dayss integer;
joining_date date;

begin
--   insert into employee values (employee_id , dayss);
  select (current_date - working_days) into joining_date from employee;
return joining_date;
end;
$$ language plpgsql;
