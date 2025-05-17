-- find the total quantity of each pizza by their category

select sum(order_details.quantity) as quantity,
pizza_types.category from order_details
join pizzas
on order_details.pizza_id = pizzas.pizza_id
join pizza_types
on pizza_types.pizza_type_id = pizzas.pizza_type_id
group by category  
order by quantity desc limit 5