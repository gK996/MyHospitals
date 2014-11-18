drop database myhospitals;
create database MyHospitals;
use MyHospitals;

create table Hospital ( 
H_ID INT primary key NOT NULL, 
H_Name Varchar(100) NOT NULL, 
Address Varchar(200) NOT NULL, 
Location Varchar(200),
State Varchar (3) NOT NULL,
H_size ENUM('small','medium','large'), 
H_type ENUM('public', 'private'), 
Number_of_beds Varchar(64) NOT NULL, 
Contact_number INT UNIQUE NOT NULL);

create table Emergency_department ( 
H_ID INT NOT NULL,
Triage_code Varchar(64), 
Waiting_time INT, 
Number_of_Patients INT, 
Success_rate Decimal(5,2), 
Start_Year Year,
End_Year Year,
ID_Code INT primary key,
Foreign key (H_ID) references Hospital ( H_ID) on update CASCADE);

create table ED_statistics(
ID_Code INT NOT NULL,
On_time Decimal(5,2), 
P_G_average Decimal (5,2), 
Foreign key (ID_Code) references Emergency_department(ID_Code) on update CASCADE);

create table Surgeries (
P_ID INT primary key, 
Surgery_type ENUM('elective', 'other'),
Start_year year,
End_year year);

create table Elective_surgery ( 
P_ID INT NOT NULL,
Urgency Varchar(64), 
Waiting_time INT,
Number_of_surgeries INT, 
On_time Decimal(5,2),
Foreign key (P_ID) references Surgeries (P_ID) on update CASCADE);

create table Other(
P_ID INT NOT NULL,
Surgery_type Varchar(64),
Number_of_surgeries INT,
Median_waiting_time INT,
Foreign key (P_ID) references Surgeries (P_ID) on update CASCADE);

create table Peer_group ( 
H_ID INT NOT NULL, 
PGC Varchar(2) Primary key NOT NULL,
Number_of_beds Varchar (64), 
H_size ENUM ('small','medium','large'), 
H_type ENUM('public','private'),
Foreign key (H_ID) references Hospital (H_ID) on update CASCADE);

create table PG_Statistics (
PGC Varchar(2) NOT NULL,
P_ID INT NOT NULL,
On_time Decimal(5,2), 
P_G_average Decimal (5,2), 
Median_time INT,
PG_avgWait INT,
Foreign key (P_ID) references Surgeries (P_ID) on update CASCADE,
Foreign key (PGC) references Peer_group(PGC) on update CASCADE);

#View
Create view E_D as
select H_ID, Triage_code, Start_Year,End_Year, Number_of_Patients, On_time, P_G_average  
from emergency_department join ed_statistics using (ID_code);
