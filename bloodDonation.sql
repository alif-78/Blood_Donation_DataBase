drop TABLE blood_patient;
drop TABLE blood;
drop TABLE bloodevent;
drop TABLE patient;
drop TABLE branch;
drop TABLE Donor;
create table Donor(
    donar_id INTEGER primary key,
    donar_name VARCHAR(20),
    bloodtype VARCHAR(5),
    donar_address VARCHAR(20),
    donar_phone INTEGER 
);
create table patient(
    patient_id INTEGER primary key,
    patient_name VARCHAR(20),
    bloodtype VARCHAR(5),
    patient_address VARCHAR(20),
    patient_phone INTEGER NOT NULL
);


create table branch(
    branch_id INTEGER primary key,
    branch_city VARCHAR(15),
    postcode NUMBER(5)
);
create table bloodEvent(
    event_id Integer primary key,
    branch_id INTEGER ,
    eventDate VARCHAR(10),
    foreign key (branch_id) REFERENCES branch(branch_id) on DELETE CASCADE
);
create table blood(
    blood_id INTEGER primary key,
    donar_id Integer,
    event_id INTEGER,
    blood_quantity INTEGER,
    foreign key(donar_id) REFERENCES Donor(donar_id) ON DELETE CASCADE,
    foreign key(event_id) REFERENCES bloodEvent(event_id) ON DELETE CASCADE
);
create table blood_patient(
    patient_id INTEGER primary key,
    blood_id  INTEGER ,
    blood_date VARCHAR(20),
    quantity INTEGER,
    foreign key(patient_id) REFERENCES patient(patient_id) ON DELETE CASCADE,
    foreign key(blood_id) REFERENCES blood(blood_id) ON DELETE CASCADE 
);
insert into Donor (donar_id,donar_name,bloodtype,donar_address,donar_phone) values (1,'ALif','B+ve','Dhaka',123);
insert into Donor (donar_id,donar_name,bloodtype,donar_address,donar_phone) values (2,'jinat','B+ve','Dhaka',124);
insert into Donor (donar_id,donar_name,bloodtype,donar_address,donar_phone) values (3,'Asif','B+ve','Dhaka',125);
insert into Donor (donar_id,donar_name,bloodtype,donar_address,donar_phone) values (4,'tamim','O+ve','Khulna',126);
insert into Donor (donar_id,donar_name,bloodtype,donar_address,donar_phone) values (5,'rishad','AB+ve','Khulna',127);
insert into Donor (donar_id,donar_name,bloodtype,donar_address,donar_phone) values (6,'ALi','B+ve','Dhaka',128);
insert into Donor (donar_id,donar_name,bloodtype,donar_address,donar_phone) values (7,'Mukim','B+ve','Chittagong',129);
insert into Donor (donar_id,donar_name,bloodtype,donar_address,donar_phone) values (8,'anika','A+ve','Cumills',130);
insert into Donor (donar_id,donar_name,bloodtype,donar_address,donar_phone) values (9,'anik','O+ve','Khulna',131);
insert into Donor (donar_id,donar_name,bloodtype,donar_address,donar_phone) values (10,'jinat','AB+ve','Khulna',132);
insert into Donor (donar_id,donar_name,bloodtype,donar_address,donar_phone) values (11,'ALi','B+ve','Dhaka',128);
insert into Donor (donar_id,donar_name,bloodtype,donar_address,donar_phone) values (12,'Munna','B+ve','Chittagong',178);
insert into Donor (donar_id,donar_name,bloodtype,donar_address,donar_phone) values (13,'faiyaz','A+ve','Cumills',168);
insert into Donor (donar_id,donar_name,bloodtype,donar_address,donar_phone) values (14,'faruq','O+ve','Khulna',157);
insert into Donor (donar_id,donar_name,bloodtype,donar_address,donar_phone) values (15,'farhan','AB+ve','Khulna',156);

insert into patient (patient_id,patient_name,bloodtype,patient_address,patient_phone) values (11,'Arman','O+ve','Dhaka',1281);
insert into patient (patient_id,patient_name,bloodtype,patient_address,patient_phone) values (12,'Mainul','O+ve','Brahmanbaria',1292);
insert into patient (patient_id,patient_name,bloodtype,patient_address,patient_phone) values (13,'Alam','B+ve','Comilla',1303);
insert into patient (patient_id,patient_name,bloodtype,patient_address,patient_phone) values (14,'Khairul','O-ve','Dhaka',1314);
insert into patient (patient_id,patient_name,bloodtype,patient_address,patient_phone) values (15,'Islam','A+ve','Kasba',1325);
insert into patient (patient_id,patient_name,bloodtype,patient_address,patient_phone) values (16,'anim','O+ve','Dhaka',12816);
insert into patient (patient_id,patient_name,bloodtype,patient_address,patient_phone) values (17,'sidu','O+ve','Khulna',12927);
insert into patient (patient_id,patient_name,bloodtype,patient_address,patient_phone) values (18,'partho','B+ve','Comilla',13038);
insert into patient (patient_id,patient_name,bloodtype,patient_address,patient_phone) values (19,'Khairul','O-ve','Dhaka',13149);
insert into patient (patient_id,patient_name,bloodtype,patient_address,patient_phone) values (20,'abir','A+ve','Kasba',1325);

insert into branch (branch_id, branch_city,postcode) values (101,'Dhaka',100);
insert into branch (branch_id, branch_city,postcode) values (102,'Brahmanbaria',799003);
insert into branch (branch_id, branch_city,postcode) values (103,'Cumilla',3500);
insert into branch (branch_id, branch_city,postcode) values (104,'Khulna',9000);
insert into branch (branch_id, branch_city,postcode) values (105,'Kasba',854330);

insert into bloodevent( event_id,branch_id,eventDate) values (10001,105,'3July,2022');
insert into bloodevent( event_id,branch_id,eventDate) values (10002,103,'4July,2022');
insert into bloodevent( event_id,branch_id,eventDate) values (10003,102,'5July,2022');
insert into bloodevent( event_id,branch_id,eventDate) values (10004,104,'6July,2022');
insert into bloodevent( event_id,branch_id,eventDate) values (10005,101,'7July,2022');

insert into blood(blood_id,donar_id,event_id,blood_quantity) values (100001,3,10005,2);
insert into blood(blood_id,donar_id,event_id,blood_quantity) values (100002,2,10003,1);
insert into blood(blood_id,donar_id,event_id,blood_quantity) values (100003,1,10002,3);
insert into blood(blood_id,donar_id,event_id,blood_quantity) values (100004,5,10001,4);
insert into blood(blood_id,donar_id,event_id,blood_quantity) values (100005,4,10004,2);
insert into blood(blood_id,donar_id,event_id,blood_quantity) values (100006,6,10005,2);
insert into blood(blood_id,donar_id,event_id,blood_quantity) values (100007,7,10003,1);
insert into blood(blood_id,donar_id,event_id,blood_quantity) values (100008,9,10002,3);
insert into blood(blood_id,donar_id,event_id,blood_quantity) values (100009,8,10001,4);
insert into blood(blood_id,donar_id,event_id,blood_quantity) values (100010,10,10004,2);

insert into blood_patient(patient_id,blood_id,blood_date,quantity) values (11,100001,'8July,2022',1);
insert into blood_patient(patient_id,blood_id,blood_date,quantity) values (13,100003,'8July,2022',1);
insert into blood_patient(patient_id,blood_id,blood_date,quantity) values (12,100002,'8July,2022',2);
insert into blood_patient(patient_id,blood_id,blood_date,quantity) values (15,100004,'8July,2022',5);
insert into blood_patient(patient_id,blood_id,blood_date,quantity) values (14,100005,'8July,2022',1);
insert into blood_patient(patient_id,blood_id,blood_date,quantity) values (16,100006,'8July,2022',3);
insert into blood_patient(patient_id,blood_id,blood_date,quantity) values (17,100007,'8July,2022',1);
insert into blood_patient(patient_id,blood_id,blood_date,quantity) values (18,100008,'8July,2022',2);
insert into blood_patient(patient_id,blood_id,blood_date,quantity) values (19,100009,'8July,2022',1);
insert into blood_patient(patient_id,blood_id,blood_date,quantity) values (20,100010,'8July,2022',7);

describe Donor;
select *from Donor; 

describe patient;
select *from patient; 

describe branch;
select *from branch; 

describe bloodevent;
select *from bloodevent; 

describe blood;
select *from blood; 

describe blood_patient;
select *from blood_patient; 

--lab2;
alter table Donor add donor_age NUMBER(3);
DESCRIBE Donor;
alter table blood_patient add (patient_age Number(3),patient_problem VARCHAR(20));
Desccribe blood_patient;
alter table Donor MODIFY donor_age INTEGER;
Describe Donor;
alter TABLE Donor drop COLUMN donor_age;
Describe Donor;
alter table blood_patient RENAME COLUMN patient_age to P_Age;
Describe blood_patient;
select *from Donor;
Update Donor set donar_address='BrahmanBaria' where donar_name='ALif';
select *from Donor;
Update Donor set donar_address='Rangpur' where donar_name='jinat';
SELECT *from Donor;
Delete from blood_patient where blood_id=100004;
Delete from blood where donar_id=5;
 
alter table blood_patient drop COLUMN P_Age;
alter table blood_patient drop COLUMN patient_problem;
describe blood_patient;

--lab3;
SELECT patient_id,blood_date,quantity from blood_patient;
Select patient_id from blood_patient
where patient_id<15;
Select patient_id from blood_patient 
where patient_id=11 Or patient_id=15;
Select patient_id from blood_patient 
where patient_id between 11 and 14;
Select patient_id from blood_patient 
where patient_id not between 12 and 14;
Select patient_id from blood_patient 
where patient_id>=11 and patient_id<=13;
Select patient_id from blood_patient 
where patient_id in (11,14); --1st&last that's mean here id 11 & 14 will be shown;
Select patient_id from blood_patient 
where patient_id not  in (11,14);
Select donar_id,donar_name,bloodtype from Donor 
order by donar_id;
Select donar_id,donar_name,bloodtype from Donor 
order by donar_id desc;
Select donar_id,donar_name,bloodtype,donar_phone from Donor 
order by donar_id,donar_phone;

--lab4;
--There are five AGGREGATE functions;
--1.Count,2.SUM,3.MIN,4.Max,5.AVG;
SELECT COUNT(*) from branch;
Select count(branch_city) from branch;
SELECT MAX(branch_city) from branch;
Select MAX(donar_id) from Donor;
Select SUM(blood_quantity) from blood;
Select AVG(blood_quantity) from blood;
select count(donar_id),bloodtype from donor group by(bloodtype);

--lab5
SELECT donar_name from donor where bloodtype in 
(select bloodtype from donor where donar_address='Khulna');


select blood_id from blood 
where donar_id in
(select donar_id from donor where donar_id>3);


select patient_phone from patient 
where patient_id in
(select patient_id from patient where patient_address='Dhaka');


Insert into Donor (donar_id,donar_name,donar_address) 
select patient_phone,patient_name,patient_address from patient where  bloodtype ='O+ve';

Select donar_name,bloodtype from donor 
union select patient_name,bloodtype from patient;
select donar_address from donor 
intersect select patient_address from patient;
select donar_address from donor 
minus select patient_address from patient;
Select donar_address from donor 
union select patient_address from patient 
INTERSECT select donar_address from donor;

--lab6
select d.donar_id,d.donar_name,p.patient_address 
from donor d, patient p
where d.bloodtype = p.bloodtype;
select d.donar_id,d.donar_name,p.patient_address
from donor d join patient p
on d.bloodtype = p.bloodtype;
select d.donar_id,d.donar_name,p.patient_address
from donor d join patient p
using (bloodtype);
select d.donar_id,d.donar_name,p.patient_address 
from donor d  natural join patient p;
select branch_city,eventDate from branch natural join bloodevent;
select *from branch cross join bloodevent;
select donar_name,patient_name from donor INNER JOIN patient on donar_bloodtype=patient_bloodtype;
select donar_name,patient_name from donor outer JOIN patient on donar_id=patient_id;
select d.donar_name,p.patient_name from donor d left outer JOIN patient p on d.bloodtype=p.bloodtype;
select d.donar_name,p.patient_name from donor d right outer JOIN patient p on d.bloodtype=p.bloodtype;
select b1.branch_city,b2.postcode from branch b1 join branch b2 on b1.branch_id=b2.branch_id;
select * from branch b1 natural join branch b2 ;

--lab7;
--Pl SQL
Set SERVEROUTPUT ON

DECLARE 
max_postcode branch.postcode%type;
BEGIN
   select MAX(postcode) into max_postcode from branch;
   DBMS_OUTPUT.PUT_LINE('Max Postcode is : ' || max_postcode);
END;
/
Set SERVEROUTPUT ON
DECLARE 
countBlood donor.donar_id%type;
BEGIN
   select count(donar_id) into countBlood from donor where bloodtype='B+ve';
   DBMS_OUTPUT.PUT_LINE('No. of blood  ' || countBlood );
END;
/
Set SERVEROUTPUT ON
DECLARE 
countBlood donor.donar_id%type;
countT donor.donar_name%type;
BEGIN
   select count(donar_id) into countBlood from donor where bloodtype='B+ve';
   If countBlood > 2 Then countT := 'Enough';
   ELSE countT := 'NOT Enough';
   END If;
DBMS_OUTPUT.PUT_LINE('No. of blood  ' || countBlood  || ' is ' || countT);
End;
/

--lab8
Set SERVEROUTPUT ON
DECLARE
     p_id patient.patient_id%type;
     p_name patient.patient_name%type;
     Cursor c1 is select patient_id,patient_name from patient;
BEGIN
    open c1;
    LOOP
       fetch c1 into p_id,p_name;
       Exit when c1 % NOTFOUND;
       DBMS_OUTPUT.PUT_LINE(p_id || ' ' || p_name);
    End LOOP;
    Close c1;    
END;
/
Set SERVEROUTPUT ON
create or REPLACE PROCEDURE getName IS  
d_id donor.donar_id%type;
d_name donor.donar_name%type;
BEGIN
d_id := 10;
select donar_name into d_name from donor where donar_id=d_id;
DBMS_OUTPUT.PUT_LINE(d_name);
END;
/
BEGIN
getName;
END;
/

Set SERVEROUTPUT ON
create or REPLACE FUNCTION getSum  RETURN Number IS
 sumBlood blood.blood_quantity%type;
BEGIN
select SUM(blood_quantity) into sumBlood from blood;
return sumBlood;
END;
/
Set SERVEROUTPUT ON
BEGIN
DBMS_OUTPUT.PUT_LINE(getSum);
END;
/

Set SERVEROUTPUT ON
DECLARE
   counter Number(2) :=11;
   p_id patient.patient_id%type;
   p_name patient.patient_name%type;
BEGIN
    while counter<=16
    Loop
    select patient_name,patient_id into p_name,p_id from patient
    where patient_id = counter;
    DBMS_OUTPUT.PUT_LINE(p_name || p_id);
    counter := counter + 1;
    end loop;
    EXCEPTION
      WHEN others THEN
         DBMS_OUTPUT.PUT_LINE (SQLERRM);
END; 
/  

--lab9
Create OR replace trigger display_change
before insert or update
on  Donor
for each row 
when (new.donar_id>15)
DECLARE
sh donor.donar_name%TYPE;
BEGIN
sh :='Greater than 15';
dbms_output.put_line(sh);
END;
/
select * from branch;
delete from branch;
rollback;

insert into Donor (donar_id,donar_name,bloodtype,donar_address,donar_phone) values (17,'jinat','AB+ve','Khulna',132);
SAVEPOINT count_17;
insert into Donor (donar_id,donar_name,bloodtype,donar_address,donar_phone) values (18,'jinat','AB+ve','Khulna',132);
SAVEPOINT count_18;
select *from donor;

ROLLBACK to count_17;
select *from donor;

CREATE VIEW donar_data AS
SELECT donar_id, donar_name
FROM donar
WHERE donar_address = 'Dhaka';
elect *from [donar_data];

select sysdate from dual;
select current_date from dual;
select systimestamp from dual;