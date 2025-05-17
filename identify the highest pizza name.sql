-- identify the highest price of the pizza


select pizzas.price, pizza_types.name from pizzas 
inner join pizza_types 
on pizzas.pizza_type_id = pizza_types.pizza_type_id
order by pizzas.price desc limit 1;