create or replace function dept_det(id text)
returns void as
$$
declare
a text;
b text;
c text;
begin
select * into a,b,c from department where id=dept_id;
raise notice 'Department id %',a;
raise notice 'Department Name %',b;
raise notice 'Head %',c;
end
$$language plpgsql;
