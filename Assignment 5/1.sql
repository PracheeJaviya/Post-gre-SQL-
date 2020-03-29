create or replace function details(names text) returns table(emp_id text, name1 text, position text,registered boolean) as
$$
declare
det nurse;

begin
    select * into det from nurse where names = name1;
    return det;
end
$$language plpgsql;
