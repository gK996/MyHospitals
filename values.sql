Insert into Hospital values (123, 'Sir Charles Gairdner Hospital', 'Hospital Avenue 
Nedlands, WA 6009', '-31.968291, 115.815467', 'WA', 'large', 'public', '>500', 0893463333);
Insert into Hospital values (215, 'Fremantle Hospital', 'Alma Street
 Fremantle, WA 6160', '-32.058263, 115.751448', 'WA', 'medium', 'public', '200-500', 0894313333);

#EMERGENCY DEPARTMENT
#Charles Gairdner
Insert into emergency_department values (123, 'Resuscitation', 0, 1062, 100.00, 2010,2011,0001);
Insert into emergency_department values (123, 'Resuscitation', 0, 1132, 100.00, 2011,2012,0002);
Insert into emergency_department values (123, 'Resuscitation', 0, 1249, 100.00, 2012,2013,0003);
Insert into emergency_department values (123, 'Emergency', 10, 12514, 69.00, 2010,2011,0004);
Insert into emergency_department values (123, 'Emergency', 10, 13915, 72.00, 2011,2012,0005);
Insert into emergency_department values (123, 'Emergency', 10, 14039, 80.00, 2012,2013,0006);
Insert into emergency_department values (123, 'Urgent', 30 , 25777, 39.00, 2010,2011,0007);
Insert into emergency_department values (123, 'Urgent', 30 , 28425, 42.00, 2011,2012,0008);
Insert into emergency_department values (123, 'Urgent', 30 , 28307, 46.00, 2012,2013,0009);
Insert into emergency_department values (123, 'Semi-Urgent', 60 , 17319, 55.00, 2010,2011,0010);
Insert into emergency_department values (123, 'Semi-Urgent', 60 , 16690, 62.00, 2011,2012,0011);
Insert into emergency_department values (123, 'Semi-Urgent', 60 , 16930, 60.00, 2012,2013,0012);
Insert into emergency_department values (123, 'Non-Urgent', 120 , 1516, 89.00, 2010,2011,0013);
Insert into emergency_department values (123, 'Non-Urgent', 120 , 1417, 93.00, 2011,2012,0014);
Insert into emergency_department values (123, 'Non-Urgent', 120 , 1658, 91.00, 2012,2013,0015);

#Fremantle hospital
Insert into emergency_department values (215, 'Resuscitation', 0, 520, 100.00, 2010,2011,0016);
Insert into emergency_department values (215, 'Resuscitation', 0, 474, 100.00, 2011,2012,0017);
Insert into emergency_department values (215, 'Resuscitation', 0, 509, 100.00, 2012,2013,0018);
Insert into emergency_department values (215, 'Emergency', 10, 7787, 71.00, 2010,2011,0019);
Insert into emergency_department values (215, 'Emergency', 10, 8101, 79.00, 2011,2012,0020);
Insert into emergency_department values (215, 'Emergency', 10, 8800, 80.00, 2012,2013,0021);
Insert into emergency_department values (215, 'Urgent', 30 , 21656, 40.00, 2010,2011,0022);
Insert into emergency_department values (215, 'Urgent', 30 , 20544, 38.00, 2011,2012,0023);
Insert into emergency_department values (215, 'Urgent', 30 , 17845, 37.00, 2012,2013,0024);
Insert into emergency_department values (215, 'Semi-Urgent', 60 , 18589, 63.00, 2010,2011,0025);
Insert into emergency_department values (215, 'Semi-Urgent', 60 , 20756, 63.00, 2011,2012,0026);
Insert into emergency_department values (215, 'Semi-Urgent', 60 , 21247, 53.00, 2012,2013,0027);
Insert into emergency_department values (215, 'Non-Urgent', 120 , 3201, 92.00, 2010,2011,0028);
Insert into emergency_department values (215, 'Non-Urgent', 120 , 5071, 93.00, 2011,2012,0029);
Insert into emergency_department values (215, 'Non-Urgent', 120 , 6411, 85.00, 2012,2013,0030);

#SURGERIES AND PEER GROUP INFO
#Fremantle Hospital 
Insert into surgeries values ( 3433, 'elective', 2011,2012);
Insert into elective_surgery values( 3433, 'Urgent', 30, 2328, 84.00);
Insert into surgeries values ( 3434, 'elective', 2012,2013);
Insert into elective_surgery values( 3434, 'Urgent', 30, 2872, 94.00);
Insert into surgeries values ( 3435, 'elective', 2011,2012);
Insert into elective_surgery values( 3435, 'Semi-urgent', 90, 1540, 69.00);
Insert into surgeries values ( 3436, 'elective', 2012,2013);
Insert into elective_surgery values( 3436, 'Semi-urgent', 90, 1780, 75.00);
Insert into surgeries values ( 3437, 'elective', 2011,2012);
Insert into elective_surgery values( 3437, 'Non-urgent', 365, 1175, 93.00);
Insert into surgeries values ( 3438, 'elective', 2012,2013);
Insert into elective_surgery values( 3438, 'Non-urgent', 365, 580, 89.00);

Insert into surgeries values ( 3455, 'other', 2012,2013);
Insert into other values( 3455, 'Bowel cancer', 88, 28);
Insert into surgeries values ( 3456, 'other', 2013,2014);
Insert into other values( 3456, 'Bowel cancer', 105, 17);
Insert into surgeries values ( 3465, 'other', 2011,2012);
Insert into other values( 3465, 'Cardio-thoracic', 256, 18);
Insert into surgeries values ( 3466, 'other', 2012,2013);
Insert into other values( 3466, 'Cardio-thoracic', 235, 15);

Insert into Peer_group values(215,'C1', '200-500', 'medium', 'public');
Insert into pg_statistics values('C1',3433,84.00,92.00,null,null);
Insert into pg_statistics values('C1',3434,94.00,95.00,null,null);
Insert into pg_statistics values('C1',3435,69.00,76.00,null,null);
Insert into pg_statistics values('C1',3436,75.00,76.00,null,null);
Insert into pg_statistics values('C1',3437,93.00,90.00,null,null);
Insert into pg_statistics values('C1',3438,89.00,90.00,null,null);
Insert into pg_statistics values('C1',3455,null,null,28,15);
Insert into pg_statistics values('C1',3456,null,null,17,15);
Insert into pg_statistics values('C1',3465,null,null,18,15);
Insert into pg_statistics values('C1',3466,null,null,15,16);

Insert into ED_statistics values(0016 ,100.00,100.00);
Insert into ED_statistics values(0017,100.00,100.00);
Insert into ED_statistics values(0018,100.00,100.00);
Insert into ED_statistics values(0019,71.00,78.00);
Insert into ED_statistics values(0020,79.00,80.00);
Insert into ED_statistics values(0021,80.00,81.00);
Insert into ED_statistics values(0022,40.00,61.00);
Insert into ED_statistics values(0023,38.00,62.00);
Insert into ED_statistics values(0024,37.00,64.00);
Insert into ED_statistics values(0025,63.00,66.00);
Insert into ED_statistics values(0026,63.00,68.00);
Insert into ED_statistics values(0027,53.00,70.00);
Insert into ED_statistics values(0028,92.00,86.00);
Insert into ED_statistics values(0029,93.00,88.00);
Insert into ED_statistics values(0030,85.00,89.00);


# Charles Gairdner
Insert into surgeries values ( 4221, 'elective', 2011,2012);
Insert into elective_surgery values( 4221, 'Urgent', 30, 4935, 75.00);
Insert into surgeries values ( 4222, 'elective', 2012,2013);
Insert into elective_surgery values( 4222, 'Urgent', 30, 4827, 81.00);
Insert into surgeries values ( 4223, 'elective', 2011,2012);
Insert into elective_surgery values( 4223, 'Semi-urgent', 90, 3030, 65.00);
Insert into surgeries values ( 4224, 'elective', 2012,2013);
Insert into elective_surgery values( 4224, 'Semi-urgent', 90, 3483, 71.00);
Insert into surgeries values ( 4225, 'elective', 2011,2012);
Insert into elective_surgery values( 4225, 'Non-urgent', 365, 2033, 90.00);
Insert into surgeries values ( 4226, 'elective', 2012,2013);
Insert into elective_surgery values( 4226, 'Non-urgent', 365, 2227, 90.00);

Insert into surgeries values ( 4233, 'other', 2011,2012);
Insert into other values( 4233, 'Bowel cancer', 89, 15);
Insert into surgeries values ( 4234, 'other', 2012,2013);
Insert into other values( 4234, 'Bowel cancer', 70, 15);
Insert into surgeries values ( 4244, 'other', 2011,2012);
Insert into other values( 4244, 'Cardio-thoracic', 273, 10);
Insert into surgeries values ( 4245, 'other', 2012,2013);
Insert into other values( 4245, 'Cardio-thoracic', 270, 7);

Insert into Peer_group values(123,'B1', '200-500', 'large', 'public');
Insert into pg_statistics values('B1',4221,84.00,92.00,null,null);
Insert into pg_statistics values('B1',4222,94.00,95.00,null,null);
Insert into pg_statistics values('B1',4223,69.00,76.00,null,null);
Insert into pg_statistics values('B1',4224,75.00,76.00,null,null);
Insert into pg_statistics values('B1',4225,93.00,90.00,null,null);
Insert into pg_statistics values('B1',4226,89.00,90.00,null,null);
Insert into pg_statistics values('B1',4233,null,null,15,15);
Insert into pg_statistics values('B1',4234,null,null,15,15);
Insert into pg_statistics values('B1',4244,null,null,10,15);
Insert into pg_statistics values('B1',4245,null,null,7,16);

Insert into ED_statistics values(0001,100.00,100.00);
Insert into ED_statistics values(0002,100.00,100.00);
Insert into ED_statistics values(0003,100.00,100.00);
Insert into ED_statistics values(0004,69.00,78.00);
Insert into ED_statistics values(0005,72.00,80.00);
Insert into ED_statistics values(0006,80.00,81.00);
Insert into ED_statistics values(0007,39.00,61.00);
Insert into ED_statistics values(0008,42.00,62.00);
Insert into ED_statistics values(0009,46.00,64.00);
Insert into ED_statistics values(0010,55.00,66.00);
Insert into ED_statistics values(0011,62.00,68.00);
Insert into ED_statistics values(0012,60.00,70.00);
Insert into ED_statistics values(0013,89.00,86.00);
Insert into ED_statistics values(0014,93.00,88.00);
Insert into ED_statistics values(0015,91.00,89.00);








