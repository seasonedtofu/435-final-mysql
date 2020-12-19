/*-------q4---------*/
/*For each customer, identify the make/model/type of the vehicle the customer rent most often*/

/*------ANDREW ZHU, FINAL QUESTION 4------*/

/* This query will return multiple vehicles for a customer if the highest count of a vehicle rented is the same for another vehicle for that customer. Subquery pulls every vehicle a customer has rented and counts the same vehicles rented by a customer, then ranks it. Will only pulled 1st ranked vehicle count for each customer. (NOTE: PULLS MULTIPLE IF MOST AMOUNT OF TIMES FOR TWO OR MORE VEHICLES RENTED ARE THE SAME) */

select customer_id, customer_name, vehicle_id, make, model, vehicle_type, count
from (
	select r.customer_id, c.customer_name, r.vehicle_id,
        v.make, v.model, v.vehicle_type, count(*) as count,
        rank() over(partition by r.customer_id order by count(*) desc) ranked
	from rental r
	inner join customer c on c.customer_id = r.customer_id
	inner join vehicle v on r.vehicle_id = v.vehicle_id
	group by r.customer_id, c.customer_name, r.vehicle_id, v.make,
	v.model, v.vehicle_type
) z
where ranked=1
order by customer_id,vehicle_id;
