
CREATE OR REPLACE FUNCTION q8 ()
    RETURNS TABLE(phy_id text,name text,dept_id text,dept_name varchar[30],pos TEXT)
    AS $$
BEGIN
    RETURN query
    SELECT
        physician.phy_id,
        physician.phy_name,
        department.dept_id,
        department.dept_name,
        physician.position
    FROM
        department
        INNER JOIN physician ON department.head = physician.phy_name
    ORDER BY
        dept_id,
        position;
    RETURN;
END
$$
LANGUAGE plpgsql;
