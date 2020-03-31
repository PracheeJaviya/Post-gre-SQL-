    create or replace function report() returns void as
    $$
    declare
    dept text;
    id integer;
    x integer := 0;
    c integer :=0;
    pat text; phname text;
    num integer;
    begin
        select count(dept_id) into id from department;
        for x in 1..id
        loop
        select dept_name into dept from department where dept_id = concat('D',x);
        select patient into pat from appointment where dept_id = concat('D',x);
        select p.phy_name into phname from physician p,appointment a where dept_id = concat('D',x) and p.phy_id=a.phy_id;
        select count(patient) into num from appointment where dept_id = concat('D',x);
        raise notice E'\nDepartment name: %\n\n Patient Name\t\t Physician name\n % \t\t\t % \n\n Total % patients are treated in % department \n\n\n',dept,pat,phname,num,dept;
        end loop;
    end;
    $$language plpgsql;
