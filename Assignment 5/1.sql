create or replace function details(names text)
returns void as
$$
declare
a text;
b text;
c text;
d boolean;
begin
select * into a,b,c,d from nurse where names=name1;
raise notice 'Employee id %',a;
raise notice 'Employee name %',b;
raise notice 'Employee position %',c;
raise notice 'Employee registration %',d;
end
$$language plpgsql;
