create or replace function phy_det(id text)
returns void as
$$
declare
a text;
b text;
c text;
begin
select * into a,b,c from physician where id=phy_id;
raise notice 'Physician id %',a;
raise notice 'Name %',b;
raise notice 'Position %',c;
end
$$language plpgsql;
