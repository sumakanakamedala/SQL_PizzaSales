-- List of top 5 most ordered pizza types
-- Along with  their quantities

-- Here,there's no direct relation btw 2 tables so we join all 
-- of them to establish connection using common keys
use pizzahut;

select pizza_types.name,
sum(order_details.quantity) as quantity
from pizza_types join pizzas
on pizza_types.pizza_type_id =pizzas.pizza_type_id
join order_details
on order_details.pizza_id = pizzas.pizza_id
group by pizza_types.name
order by quantity desc
limit 5;