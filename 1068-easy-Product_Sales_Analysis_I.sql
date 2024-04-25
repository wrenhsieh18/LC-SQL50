-- Write your MySQL query statement below
-- https://leetcode.com/problems/product-sales-analysis-i/description/?envType=study-plan-v2&envId=top-sql-50
select product_name, year, price
from sales S
inner join product P on S.product_id = P.product_id 