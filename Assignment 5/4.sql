create or replace function room_det(roomn text)
returns void as
$$
declare
a text;
b text;
c integer;
d boolean
begin
select * into a,b,c,d from room where rno=roomn;
raise notice 'Room number %',a;
raise notice 'Room type %',b;
raise notice 'Floor %',c;
raise notice 'Availability %',d;
end
$$language plpgsql;
