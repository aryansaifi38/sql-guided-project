-- join relavent tables to find the category wise distrubution of pizzas.
select category ,count(name) from pizza_types
group by category