-- Write your MySQL query statement below
-- https://leetcode.com/problems/not-boring-movies/description/?envType=study-plan-v2&envId=top-sql-50
select *
from cinema
where description != 'boring' and id%2 = 1 
order by rating desc