/*-------q6---------*/
/*For each registration_state, identify the state from which most customers are renting from.*/

/*-------ANDREW ZHU, FINAL QUESTION 6------*/

/* This query will return multiple customer_states for a single registration_state if the highest count of customers are the same for multiple customer_states for a single registration_state. Subquery will pull all customer_states and counts how many vehicles were rented in each registration_state. Then using rank, will rank each customer_state for each registration state, at the end, will only pull rank 1 for each registration_state so that we get the state from which most customers are renting from for a registration_state. */

select registration_state, state AS customer_state, count
from (
        select v.registration_state, c.state, count(*) as count,
        rank() over(partition by v.registration_state order by count(*) desc) cus_state_rank
    from rental r
    inner join customer c on c.customer_id = r.customer_id 
    inner join vehicle  v on r.vehicle_id = v.vehicle_id 
    group  by v.registration_state, c.state 
) z
where cus_state_rank = 1
order  by registration_state,customer_state;
