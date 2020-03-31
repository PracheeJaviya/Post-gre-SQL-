\c dbms

create or replace function dudney(number integer) returns void as $$
declare
 y integer := 0;
 n integer := number;
 rem integer;
 z integer;

begin
loop
exit when number=0;
   rem=mod(number,10);
   number=Trunc(number/10);
   y=y+rem;

end loop;
z:= power(y,3);
if  z = n then
 raise notice '% is dudney number', n;
else
 raise notice '% is not a dudney number',n;
end if;
end;
$$ Language plpgsql;
