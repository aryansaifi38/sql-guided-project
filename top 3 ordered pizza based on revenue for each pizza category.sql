-- deremine the top 3 most odered pizza based on the revenue for each pizza category 


select category,name,total_revenue
from
(select pizza_types.name , pizza_types.category ,sum(order_details.quantity*pizzas.price) as total_revenue,
rank() over (partition by pizza_types.category order by sum(order_details.quantity*pizzas.price) )
from pizza_types
join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details
on order_details.pizza_id = pizzas.pizza_id
group by pizza_types.category,pizza_types.name) as rank
where rank<=3