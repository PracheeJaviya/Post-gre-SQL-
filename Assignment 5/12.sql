create or replace function count1() returns integer as
$$
begin
return count(phy_name) from physician;
end;
$$language plpgsql;
