-- Create a trigger which will update Room no. in Appointment table is Room no. is updated in Room table.
create or replace function q5() returns trigger as
$$
declare
begin
    if TG_OP='update' then
        update  appointment set mo=NEW.rno where mo=OLD.rno;
    end if;
    return NEW;
end;
$$language plpgsql;

create trigger q5 before update on room
for each row execute function q5();
