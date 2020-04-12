-- create table track (op varchar2(15),tm timestamp);


CREATE OR REPLACE FUNCTION q3() RETURNS TRIGGER AS $$
begin
      if TG_OP = 'insert' then
           insert into track values('Insert', clock_timestamp());
      elsif TG_OP = 'delete' then
           insert into track values('Delete', clock_timestamp());
      else
           insert into track values('Update', clock_timestamp());
      end if;
      RETURN new;
end;
$$ LANGUAGE plpgsql;

CREATE TRIGGER q3 before insert or update or delete on appointment
    FOR EACH ROW EXECUTE FUNCTION q3();
