create or replace function room(typ text,floorno int) returns integer as
$$
declare
types text;
fno integer;
cnt integer;
begin
select type1 into types from room;
select floor1 into fno from room;
select count(rno) into cnt from room where typ=type1 and floorno=floor1 and availability='t';

return cnt;

-- select count(rno) into cnt from room where typ=types and floorno=fno and availability='t';
-- raise 'Number of rooms : %', cnt;
end
$$language plpgsql;
