
create or replace function q8 ()
    returns table(phy_id text,name text,dept_id text,dept_name varchar[30],pos TEXT)
    as $$
begin
    return query
    select
        physician.phy_id,
        physician.phy_name,
        department.dept_id,
        department.dept_name,
        physician.position
    from
        department
        INNER JOIN physician ON department.head = physician.phy_name
    order by
        dept_id,
        position;
    return;
end
$$language plpgsql;
