create or replace function applicant(id integer ) returns void as
$$
declare
c integer;
marks_10 integer;
marks_12 integer;
naam text;
begin
    select count(app_id) into c from applicant;

    for i in 1..c loop
    select marks10 into marks_10 from applicant where app_id=c;
    select marks12 into marks_12 from applicant where app_id=c;
    select name into naam from applicant where app_id=c;
      if marks_10 > 75 and marks_12 >75 then
       raise notice 'Congratulations % ! you are eligible',naam;
      else
       raise notice 'Regrets %!, try next year',naam;
       end if;

    end loop;
    end;
$$ language plpgsql;
