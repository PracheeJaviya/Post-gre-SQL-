
create or replace function submission() returns void as $$
declare
student_id integer;
gdate date;
ldate date;
sdate date;
sname text;
num integer;
begin
select count(id) into student_id from student;

for i in 1..student_id loop

select sub_date into sdate from submission where id=student_id;
select date_given into gdate from assignment where student_id=assno;
select last_date into ldate from assignment where student_id=assno;
select name into sname from student where id=student_id;
select assno into num from assignment where student_id=assno;
if sdate between gdate and ldate then
  raise notice '\t\t\t\t %', current_date;
  raise notice 'ASSIGNMENTS SUBMITTED BETWEEN % AND %',gdate,ldate;
  raise notice '---------------------------------------------';
  raise notice 'Student Name    Assignment number    Date of submission    Status';
  raise notice ' %              %                     %                   Submitted',sname,num,sdate;
end if;
end loop;
end;
$$ language plpgsql;
