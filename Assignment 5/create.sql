-- creates new tables and inserts values into them
drop table nurse,physician,department,room,appointment;
create table
if not exists nurse
(
    emp_id text,
    name1 text,
    position text,
    registered boolean
);

create table
if not exists physician
(
    phy_id text,
    phy_name text,
    position text
);

create table
if not exists department
(
    dept_id text,
    dept_name varchar[10],
    head text
);

create table
if not exists appointment
(
    ap_id text primary key,
    phy_id text,
    dept_id text,
    mo text,
    time TIME,
    emp_id text,
    patient text

);

create table
if not exists room
(
    rno text primary key,
    type1 text,
    floor1 int,
    availability boolean
);

insert into nurse
values
    ('E1','Amy','head',true),
    ('E2','Blessy','Warden',true),
    ('E3','Rosy','Incharge',true),
    ('E4','Mona','Trainee',false),
    ('E5','Alexa','Staff',false);

insert into physician
values
('P1', 'Stefan', 'Permanent'),
('P2', 'Chirag', 'Visiting'),
('P3', 'Kamal', 'Contractual'),
('P4', 'Alvin', 'Permanent');

insert into department
values
('D1', '{Gynacology}', 'Chirag'),
('D2', '{Pediatrician}', 'Kamal'),
('D3', '{Anesthetic}', 'Stefan'),
('D4', '{General}', 'Alvin');

insert into appointment
values
('A1',  'P4' , 'D4' , 'E5' , '10:00','R1','Rajan'),
('A2',  'P2' , 'D1' , 'E3' , '9:00','R4','Sujata'),
('A3',  'P3' , 'D2' , 'E4' , '12:00','R3','Amir'),
('A4', 'P2' , 'D1' , 'E2' ,'9:15','R4','Rekha' ),
('A5',  'P1' , 'D3' , 'E1' ,'11:00','R2','Sundar' );

insert into room
values
('R1', 'General', 1 ,true),
('R2' ,'Special', 2, true),
('R3' ,'Semi Special' , 2 ,true),
('R4' ,'General', 1, false);
