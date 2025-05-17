-- list the top 5 msot ordered pizza type along with their quantities


select sum(order_details.quantity) as quantity,
pizza_types.name from order_details
join pizzas
on order_details.pizza_id = pizzas.pizza_id
join pizza_types
on pizza_types.pizza_type_id = pizzas.pizza_type_id
group by name 
order by quantity desc limit 5