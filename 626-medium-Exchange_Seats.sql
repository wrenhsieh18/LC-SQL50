-- Write your MySQL query statement below
-- https://leetcode.com/problems/exchange-seats/?envType=study-plan-v2&envId=top-sql-50

-- select case
--         when id%2 = 1 and id = (select max(id) from seat) then id
--         when id%2 = 1 then id+1
--         when id%2 = 0 then id-1
--        end as id,
--        student
-- from seat
-- order by id


select row_number() over (order by if(id%2, id+1, id-1) ) as id, 
       student
from seat