-- identify the msot common pizza size placed


select pizzas.size , count(order_details.order_detail_id) as total from pizzas
join order_details
on order_details.pizza_id = pizzas.pizza_id
group by pizzas.size
order by total desc limit 1;