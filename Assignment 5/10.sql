create or replace function patient(id text) returns text as
$$
declare
patname text;
begin
select patient into patname from appointment where ap_id=id;
return patname;
end;
$$language plpgsql;
