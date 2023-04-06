
# #  Show the name of the customer who have purchase model id 2

select c.first_name, c.last_name, p.booking_amount
from customer c join  purchase p
on c.customer_id= p.customer_id and p.model_id=2;

#  Show the number of customers, model_id , model_name who have purchase the same model 

select c.first_name, m.model_id, m.model_name
from customer c join purchase p join model m
on c.customer_id=p.customer_id and p.model_id=m.model_id
order by m.model_name;

#  Show the names of model model id who have the maximun rating(Rating - 1)

select m.model_id, m.model_name, f.rating
from purchase p join model m join feedback_rating f
on p.model_id= m.model_id and p.rating_id= f.rating_id and f.rating_id=1;

#  Show the names of the customers who have paid in online mode

#  Show the total amount paid by each payment mode

select  pm.payment_type,sum(p.booking_Amount) as TotalBooking
from purchase p join  payment_mode pm
on p.payment_id= pm.payment_id
group by p.payment_id;


