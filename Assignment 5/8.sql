
<<<<<<< HEAD
create or replace function q8 ()
    returns table(phy_id text,name text,dept_id text,dept_name varchar[30],pos TEXT)
    as $$
begin
    return query
    select
=======
CREATE OR REPLACE FUNCTION q8 ()
    RETURNS TABLE(phy_id text,name text,dept_id text,dept_name varchar[30],pos TEXT)
    AS $$
BEGIN
    RETURN query
    SELECT
>>>>>>> 523055172becfa25e505c836fa95de52a995e678
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
