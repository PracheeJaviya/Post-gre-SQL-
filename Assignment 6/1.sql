create or replace function trigapp() returns trigger as
$$
declare
time time;
begin
    if new.time == 0 then
    insert into appointment(time) values('10:00:00');
     end if;
    return new;
end
$$language plpgsql;
