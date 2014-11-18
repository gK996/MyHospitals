#Sir Charles Gairdner Emergency department statistics OVERALL
select Triage_code,Start_year, End_year, Number_of_patients, On_time, P_G_average
from E_D join Hospital using (H_ID)
where H_ID=123;

#SCGH Emergency department statistics distinguished by Triage Code
select Start_year,End_year, Number_of_patients, On_time, P_G_average  
from Hospital join E_D using (H_ID) 
where H_ID=123 and Triage_code = 'Resuscitation'
order by (start_year) desc;

select Start_year,End_year, Number_of_patients, On_time, P_G_average  
from Hospital join E_D using (H_ID) 
where H_ID=123 and Triage_code = 'Emergency'
order by (start_year) desc;

select Start_year,End_year, Number_of_patients, On_time, P_G_average  
from Hospital join E_D using (H_ID) 
where H_ID=123 and Triage_code = 'Urgent'
order by (start_year) desc;

select Start_year,End_year, Number_of_patients, On_time, P_G_average  
from Hospital join E_D using (H_ID)  
where H_ID=123 and Triage_code = 'Semi-urgent'
order by (start_year) desc;

select Start_year,End_year, Number_of_patients, On_time, P_G_average  
from Hospital join E_D using (H_ID) 
where H_ID=123 and Triage_code = 'Non-urgent'
order by (start_year) desc;

#Fremante hospital emergency department statistics OVERALL
select Triage_code, Start_year,End_year, Number_of_patients, On_time, P_G_average  
from Hospital join E_D using (H_ID)  
where H_ID=215;

# Fremantle Hospital emergency department statistics distinguished by Triage Code
select Start_year,End_year, Number_of_patients, On_time, P_G_average  
from Hospital join E_D using (H_ID) 
where H_ID=215 and Triage_code = 'Resuscitation'
order by (start_year) desc;

select Start_year,End_year, Number_of_patients, On_time, P_G_average  
from Hospital join E_D using (H_ID) 
where H_ID=215 and Triage_code = 'Emergency'
order by (start_year) desc;

select Start_year,End_year, Number_of_patients, On_time, P_G_average  
from Hospital join E_D using (H_ID)  
where H_ID=215 and Triage_code = 'Urgent'
order by (start_year) desc;

select Start_year,End_year, Number_of_patients, On_time, P_G_average  
from Hospital join E_D using (H_ID) 
where H_ID=215 and Triage_code = 'Semi-urgent'
order by (start_year) desc;

select Start_year,End_year, Number_of_patients, On_time, P_G_average  
from Hospital join E_D using (H_ID) 
where H_ID=215 and Triage_code = 'Non-urgent'
order by (start_year) desc;

#EXTRA QUERIES:
#Years when the ontime treatments are higher than the peer group average
select H_name, Triage_code, Start_year, End_year, Number_of_patients, On_time, P_G_average
from Hospital join E_D using (H_ID) 
where P_G_average < On_time; 

#Years when the ontime treatments are less than the peer group average
select H_name, Triage_code,Start_year, End_year, Number_of_patients, On_time, P_G_average
from Hospital join E_D using (H_ID) 
where P_G_average > On_time; 

#Years when the ontime treatments are within 5%(including 5%) under the peer group average
select H_name, Triage_code,Start_year, End_year, Number_of_patients, On_time, P_G_average
from Hospital join E_D using (H_ID) 
where P_G_average > On_time and abs(P_G_average - On_time) < 6; 

#Average Number of patients over the periods for Fremantle Hospital
select Triage_code, FLOOR(AVG(Number_of_Patients))  as Average_Number_of_Patients
from Hospital join E_D using (H_ID) 
where H_ID=215  
group by (Triage_code);

#Average Number of patients over the periods for SCGH
select Triage_code, FLOOR(AVG(Number_of_Patients) ) as Average_Number_of_Patients
from Hospital join E_D using (H_ID) 
where H_ID=123  
group by (Triage_code);