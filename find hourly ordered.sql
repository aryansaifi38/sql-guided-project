-- find the orders by hours 


select extract(hour from order_time) as hour_time,count(order_id) as orders from orders
group by hour_time 
order by hour_time asc
