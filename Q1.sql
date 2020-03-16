

create or replace function insurance(health text ,age integer,city text,gender text) returns void as $$
begin
if health ='excellent' AND age>=25 AND age<=35 AND city = 'Y' AND gender ='M' then
     raise notice 'premium %',4;
     end if;
 if health ='excellent' AND age>=25 AND age<=35 AND city = 'Y' AND gender ='F' then
    raise notice 'premium %',3; end if;
if  health = 'poor' AND age>=25 AND age<=35 AND city ='N' AND gender ='M' then
     raise notice 'premium %',6;
else
  raise notice 'not insured';
end if;
end; $$ language plpgsql;
