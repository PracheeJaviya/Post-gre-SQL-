create or replace function delappt(id text) returns void as
$$
declare
begin
delete from appointment where ap_id=id;
raise 'RECORD DELETED';
end;
$$language plpgsql;
