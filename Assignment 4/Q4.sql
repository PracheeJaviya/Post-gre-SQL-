

create or replace function join(emp_id integer,nod integer) returns date as $$
declare
joining_date date;

begin
  insert into employee values (emp_id,nod);
  select (current_date - nod) into joining_date from employee;
return joining_date;
end;
$$ language plpgsql;
