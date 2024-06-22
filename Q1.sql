-- Retrieve total no of orders placed
use pizzahut;

select count(order_id) as Total_orders from orders;