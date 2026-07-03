create database Project1 
use Project1


select top 10 * from [dbo].[Customer_data] 

-- Total Revenue M vs F
select gender, sum(purchase_amount) as Revenue
from [dbo].[Customer_data] 
group by gender

--- Which consumer usded discount but still spen more than avg purchase amount
select AVG(purchase_amount) as AVGPURCHASE from [dbo].[Customer_data]
select customer_id, discount_applied,purchase_amount
from [dbo].[Customer_data]
where discount_applied = 'Yes' and purchase_amount > (select avg(purchase_amount) from [dbo].[Customer_data])


---what are the top5 products with highest average review rating

select top 5 item_purchased, round(AVG(review_rating),2) as Average_Product_Review
from [dbo].[Customer_data]
group by item_purchased
order by Average_Product_Review desc


--- Compare avg purchase amount bwt standard & express shipping
select shipping_type, ROUND(avg(purchase_amount),2) as Average_Purchase
from [dbo].[Customer_data]
where shipping_type in ('Standard','Express')
group by shipping_type


select top 10 * from [dbo].[Customer_data] 



----do subscriber spend more?
--compare avg spend and total revenue 
--btw subs and non-subs

select subscription_status,
COUNT(*) as Total_Customers,
AVG(purchase_amount) as Average_Spending,
sum(purchase_amount) as Total_Revenue
from [dbo].[Customer_data] 
group by subscription_status
order by Average_Spending, Total_Revenue


-- Which 5 products have the higest %age of purchase with discount applied
select top 5 item_purchased, 
round(100 * sum(Case when discount_applied = 'Yes' then 1 else 0 end)/COUNT(*) ,2) as discount_rate 
from [dbo].[Customer_data] 
group by item_purchased
order by discount_rate desc


---Segment Customers into New, Returning and Loyal
---Based on their total number of previous purchases
---and show the count of each segment.


with customer_type as (
select customer_id, previous_purchases,
case 
	when previous_purchases = 1 then 'New'
	when previous_purchases between 2 and 10 then 'Returning'
	else 'Loyal'
	end as customer_segment
from Customer_data
)
select customer_segment,
	count(*) as Number_of_Customers
from customer_type
group by customer_segment 
order by Number_of_Customers asc


-- What are the Top 3 most purchased products within each category?
select top 10 * from [dbo].[Customer_data] 

WITH items_count AS (
    SELECT 
        category, 
        item_purchased,
        COUNT(customer_id) AS total_orders, -- Added the missing comma here
        DENSE_RANK() OVER(PARTITION BY category ORDER BY COUNT(customer_id) DESC) AS item_rank
    FROM Customer_data
    GROUP BY category, item_purchased
)

SELECT item_rank, category, item_purchased, total_orders
FROM items_count; -- Fixed from item_counts to match the CTE name




---Are customers who are repeat buyers (more than 5 previous purchases) also likely to subscribe?
select top 10 * from [dbo].[Customer_data] 

select subscription_status,
count(customer_id) as repaeat_buyers
from Customer_data
where previous_purchases > 5
group by subscription_status



-- What is the revenue contribution of each age group?
select age_group,
sum(purchase_amount) as Total_revenue
from Customer_data
group by age_group
order by Total_revenue desc


