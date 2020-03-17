select * from person;
create or replace function records() returns void as
$$
declare
first_n text;
middle_n text;
last_n text;
gend text;
age integer;
id integer;
begin
select count(person_id) into id from person;
  for i in 1..id loop
select (extract (year from current_date)  - extract (year from birth_date)) into age from person where person_id = i;
select first_name into first_n from person where person_id = i;
select middle_name into middle_n from person where person_id = i;
select last_name into last_n from person where person_id = i;
select gender into gend from person where person_id = i;

raise notice 'Age = %', age;
if (gend = '{F}' and age>12) then
Raise notice 'Ms. % % %', first_n,middle_n,last_n; end if;
if (gend = '{F}' and age<=12) then
Raise notice 'Baby % % %',first_n,middle_n,last_n; end if;
if (gend='{M}' and age<=12) then
Raise notice 'Master % % %',first_n,middle_n,last_n; end if;
if (gend = '{M}' and age>12) then
Raise notice 'Mr. % % %',first_n,middle_n,last_n;
end if;
end loop;
end;

$$ language plpgsql;
