/*-------q8---------*/
/*Identify the longest rental duration and the customer who rented for the longest rental duration*/

/*------ANDREW ZHU, FINAL QUESTION 8------*/

/* QUERY RETURNS MULTIPLE CUSTOMERS IF THERE ARE MULTIPLE RESULTS WITH THE SAME LONGEST DAYS RENTED */

select rental_id,customer_id,customer_name,days_rented FROM
(select *, RANK() OVER(order by days_rented desc) ranking FROM
(SELECT C.rental_id, 
       A.customer_id, 
       A.customer_name, 
       Datediff(( Str_to_date(C.return_rental_date, '%m/%d/%Y') ), ( 
       Str_to_date(C.start_rental_date, '%m/%d/%Y') )) AS days_rented 
FROM   rental C 
       LEFT JOIN customer A 
              ON A.customer_id = C.customer_id
       ORDER BY days_rented desc )z)y
WHERE ranking =1;
