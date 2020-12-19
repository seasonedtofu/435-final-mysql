/*-------q7---------*/
/*Identify the month during which most rentals occur*/

/*------ANDREW ZHU, FINAL QUESTION 7------*/

/* If 2 or more months have the same amount of rentals, query will return multiple months */

SELECT month, count AS rental_amount 
FROM   (SELECT Monthname(Str_to_date(start_rental_date, '%m/%d/%Y')) AS month, 
               Count(*) AS count, 
               Rank() OVER(ORDER BY Count(*) DESC) ranking 
        FROM   rental 
        GROUP  BY month)z 
WHERE  ranking = 1;
