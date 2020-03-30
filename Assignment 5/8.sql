-- create or replace function wise() returns void as
-- $$
-- declare
-- id integer;
-- begin
-- raise 'Position wise details : \n'
-- select count(phy_id) from physician;
-- select position into pos from physician;
-- for i in 1..id loop

-- raise ''
-- end loop;
-- end
-- $$language plpgsql;

-- create or replace function join1() returns void as
-- $$
-- declare
--  cursor c is SELECT * FROM physician INNER JOIN department ON physician.phy_Name=department.head;
--  r c%rowtype;


-- begin
-- --   dbms_output.put_line('Phy_id Phy_name Position Dept_name');                                                                                  Phy_name Position Dept_name');
--   for r in c loop
--             raise '%  %  %  %',r.phy_id,r.phy_name,r.position,r.dept_name;
--             --  dbms_output.put_line(r.Phy_id||r.Phy_name||'     '||r.Position||r.Dept_name );
--         end loop;

-- end;
-- $$language plpgsql;
-- -- declare
-- -- begin
-- -- join();
-- -- end;

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
