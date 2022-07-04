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
    donar_phone INTEGER NOT NULL
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
    foreign key (branch_id) REFERENCES branch(branch_id)
);
create table blood(
    blood_id INTEGER primary key,
    donar_id Integer,
    event_id INTEGER,
    blood_quantity INTEGER,
    foreign key(donar_id) REFERENCES Donor(donar_id),
    foreign key(event_id) REFERENCES bloodEvent(event_id)
);
create table blood_patient(
    patient_id INTEGER primary key,
    blood_id  INTEGER ,
    blood_date VARCHAR(20),
    quantity INTEGER,
    foreign key(patient_id) REFERENCES patient(patient_id),
    foreign key(blood_id) REFERENCES blood(blood_id)  
);
insert into Donor (donar_id,donar_name,bloodtype,donar_address,donar_phone) values (1,'ALif','B+ve','Dhaka',123);
insert into Donor (donar_id,donar_name,bloodtype,donar_address,donar_phone) values (2,'jinat','B+ve','Dhaka',124);
insert into Donor (donar_id,donar_name,bloodtype,donar_address,donar_phone) values (3,'Asif','B+ve','Dhaka',125);
insert into Donor (donar_id,donar_name,bloodtype,donar_address,donar_phone) values (4,'tamim','O+ve','Khulna',126);
insert into Donor (donar_id,donar_name,bloodtype,donar_address,donar_phone) values (5,'rishad','AB+ve','Khulna',127);

insert into patient (patient_id,patient_name,bloodtype,patient_address,patient_phone) values (11,'Arman','O+ve','Dhaka',128);
insert into patient (patient_id,patient_name,bloodtype,patient_address,patient_phone) values (12,'Mainul','O+ve','Brahmanbaria',129);
insert into patient (patient_id,patient_name,bloodtype,patient_address,patient_phone) values (13,'Alam','B+ve','Comilla',130);
insert into patient (patient_id,patient_name,bloodtype,patient_address,patient_phone) values (14,'Khairul','O-ve','Dhaka',131);
insert into patient (patient_id,patient_name,bloodtype,patient_address,patient_phone) values (15,'Islam','A+ve','Kasba',132);

insert into branch (branch_id, branch_city,postcode) values (101,'Dhaka',70012);
insert into branch (branch_id, branch_city,postcode) values (102,'Brahmanbaria',70013);
insert into branch (branch_id, branch_city,postcode) values (103,'Dhaka',70014);
insert into branch (branch_id, branch_city,postcode) values (104,'Khulna',70015);
insert into branch (branch_id, branch_city,postcode) values (105,'Dhaka',70016);

insert into bloodevent( event_id,branch_id,eventDate) values (10001,105,'3July,2022');
insert into bloodevent( event_id,branch_id,eventDate) values (10002,103,'4July,2022');
insert into bloodevent( event_id,branch_id,eventDate) values (10003,102,'5July,2022');
insert into bloodevent( event_id,branch_id,eventDate) values (10004,104,'6July,2022');
insert into bloodevent( event_id,branch_id,eventDate) values (10005,101,'7July,2022');

insert into blood(blood_id,donar_id,event_id,blood_quantity) values (100001,3,10005,2);
insert into blood(blood_id,donar_id,event_id,blood_quantity) values (100002,2,10003,2);
insert into blood(blood_id,donar_id,event_id,blood_quantity) values (100003,1,10002,2);
insert into blood(blood_id,donar_id,event_id,blood_quantity) values (100004,5,10001,2);
insert into blood(blood_id,donar_id,event_id,blood_quantity) values (100005,4,10004,2);

insert into blood_patient(patient_id,blood_id,blood_date,quantity) values (11,100001,'8July,2022',1);
insert into blood_patient(patient_id,blood_id,blood_date,quantity) values (13,100003,'8July,2022',1);
insert into blood_patient(patient_id,blood_id,blood_date,quantity) values (12,100002,'8July,2022',2);
insert into blood_patient(patient_id,blood_id,blood_date,quantity) values (15,100004,'8July,2022',1);
insert into blood_patient(patient_id,blood_id,blood_date,quantity) values (14,100005,'8July,2022',1);

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



