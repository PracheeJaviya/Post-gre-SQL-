create or replace function registered(names text) returns text as
$$
declare
reg boolean;
begin
select registered into reg from nurse where name1=names;
if reg='t' then
return 'yes';
else
return 'no';
end if;
end;
$$language plpgsql;
