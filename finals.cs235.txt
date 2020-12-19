This finals has two parts : REQUIRED and ASSIGNED
REQUIRED questions are common to all students. You may collaborate, consult , help others like Quinton did but you 
may NOT copy or help others to copy. Explain how it works and let the student figure it out.
Assigned Questions: 
 Each student has been randomly assigned 4 out of the q3-q12
You can find your assigned questions in a file called assignment.login in /home/data/Finals.2020.Fall
For example Ahmad Abdalla login aa6436 will do all the questions listed in 
	/home/data/Finals.2020.Fall/assignment.aa6436
This file has aa6436::11,6,3,12. Abdalla will do 11,6,3,12
if you are assigned 11,6,3,12 your answers to those questions will be graded.

If you do not find an assignment for your login, please CALL Raman on his cell.
If you do not understand dont proceed, get clarification.

OPT-OUT -- if you do not want to take the finals you can opt-out accepting a grade of B

WHERE TO SUBMIT: create a directory on IBM in your home directory called 'FINALS'
and in that directory leave a file called OPT-OUT if you are opting to skip the finals.
If you are taking the finals then create a file q2.txt,q3.txt and your assigned queries in separate files.
Copy the question in each file and then write out the query. This is required.
Learning to focus, understanding what is asked of you and having the discipline to follow through is 
important. 
WHEN to SUBMIT: 17th evening 7PM for ALL students.
Please read carefully and have fun!
--------------------------Q0-------------------------REQUIRED
You are given a spread-sheet of pinkys_rental spread-sheet:
The structure of this spreadsheet is as follows and there are no multi-domain fields (non-atomic fields).
All fields are atomic.
customer_name,profession,age,salary,town,state,vehicle_plate,registration_state,color,make,model,vehicle_type,per_day_rental_fee,per_day_insurance_fee,start_rental_date,return_rental_date,per_day_rental_fee_paid,per_day_insurance_fee_paid

There are 18 fields:
customer_name
profession
age
salary
town
state
vehicle_plate
registration_state
color
make
model
vehicle_type
per_day_rental_fee
per_day_insurance_fee
start_rental_date
return_rental_date
per_day_rental_fee_paid
per_day_insurance_fee_paid

-------q1----------(10 points)----------REQUIRED
Is this structure efficient? (credit=1 points)
Does this lead to duplicate data? (cr.=1 point)
Transform this into efficient structure using techniques you have learned in the course. (cr.=8 point)
Clearly state what you are doing and why you are doing
-------q2------------Provide a simple description of your schema (10 points)---------REQUIRED
Instead of E-R Diagram, use the notation below to describe your design
Use only text and represent a table as S(Name,SID*,Age,Gender,cell) where S is a table and it has
5 columns and SID is a primary key attribute, indicated by *. 
Course(CID*,Title,dept,Crhr) is another.
and E(SID+,CID+) 
here the table E has two attributes SID and CID and both
 are foreign key as indicated by +
You can specify the FK relationships as follows:
	CID(Course,E) according to the convention FK(PK Table,FK Table)
Cardinality of the relationships may be specified as follows:
1to1(E,Course) and 1toM(Course,E)
1to1(S,Course) and 1toM(S,E)
No need to draw anything just text ...
-------------ASSIGNED (Each student  has been assigned 4 questions q3 through q12)
-------------using the tables in the e-r diagram specified in required Q12.
-------q3-------------Write SQL to generate the following reports using the final schema---------------
Identify those customers who have rented at least 10 times 
output:<customer,number_of_times_rented>
-------q4---------
For each customer, identify the make/model/type of the vehicle the customer rent most often
-------q5---------
For each customer, identify the make/model/type they never rent
-------q6---------
For each state, identify the state from which most customers are renting from.
-------q7---------
Identify the month during which most rentals occur
-------q8---------
Identify the longest rental duration and the customer who rented for the longest rental duration
-------q9---------
Generate a report as follows
make,model,type,month,year,total_revenue
-------q10--------
Generate a report as follows
make,model,type,year,total_revenue
-------q11--------
Generate a report as follows (asset_revenue)
make,model,type,total_revenue
-------q12--------
Generate a report as follows (customer_revenue)
customer,total_revenue
---------------
