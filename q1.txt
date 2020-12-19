-------q1----------(10 points)----------REQUIRED
Is this structure efficient? (credit=1 points)
Does this lead to duplicate data? (cr.=1 point)
Transform this into efficient structure using techniques you have learned in the course. (cr.=8 point)
Clearly state what you are doing and why you are doing

-----------------------------------------------------------
Andrew Zhu
Final Question 1

No this structure is not efficient because there will be duplicate data if all columns are in one table.
I will transform it to 3 different tables so there are no duplicates:

CUSTOMER TABLE:
customer_id
customer_name
profession
age
salary
town
state

VEHICLE TABLE:
vehicle_id
vehicle_plate
registration_state
color
make
model
vehicle_type
per_day_rental_fee
per_day_insurance_fee

RENTAL TABLE:
rental_id
customer_id
vehicle_id
start_rental_date
return_rental_date
per_day_rental_fee_paid
per_day_insurance_fee_paid

I have created a rental table that will link customer and vehicle info together while separating start/end rental date and if the rental/insurance fee was paid or not. This way we will save space and customer/vehicle info will not be repeated.
We will have ids for all tables so we can save memory and use them as primary keys.
The ids for customer and vehicle tables also function as foreign keys for the rental table.



MYSQL CREATE TABLE QUERIES ARE IN create_table_queries.txt in the same directory as this file.
