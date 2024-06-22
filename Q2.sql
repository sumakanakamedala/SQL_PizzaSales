-- Calculate Total Revenue generated from pizza sales

select
round(sum(order_details.quantity * pizzas.price),2) as Total_sales
from order_details join pizzas
on pizzas.pizza_id = order_details.pizza_id;

-- Here,we use quantity x pizza price to calculate total revenue sales generated
-- Since price and quantity are in different tables, but we have pizza_id in common
-- So we join these tables on this "pizza_id"
-- These are known as joins. Look at the code for clear understanding
-- We sum all the q * p and round it to two decimal places