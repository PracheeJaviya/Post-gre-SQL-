create or replace function report() returns void as
$$
declare
dept text;
id integer;
x integer := 0;
c integer :=0;
begin
    select count(dept_id) into id from department;
    for x in 1..id
    loop
    select dept_name into dept from department where dept_id = concat('D',x);
    raise notice E'Department name: %\n\n Patient Name\t\t Physician name\n pj \t\t\t sj \n\n Total 7 patients are treated in this department',dept;
    end loop;
end;
$$language plpgsql;
