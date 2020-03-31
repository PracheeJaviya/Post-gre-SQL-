create table if not exists person
 (person_id text,
 first_name text,
 middle_name text,
 last_name text,
 gender varchar[1],
 birth_date date
 );

 insert into person
 values
 (1,'prachee','alpesh','javiya','{F}','04/11/1999'),
 (2,'shloka','alpesh','javiya','{F}','29/01/2009'),
 (3,'alpesh','hasmukhrai','javiya','{M}','20/06/1971');
