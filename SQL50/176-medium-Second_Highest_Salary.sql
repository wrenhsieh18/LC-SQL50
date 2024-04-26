-- Write your MySQL query statement below
-- https://leetcode.com/problems/second-highest-salary/description/?envType=study-plan-v2&envId=top-sql-50
select if(max(row_num) > 1, salary, null) as SecondHighestSalary 
from (
    select *, dense_rank() over (order by salary desc) as row_num
    from employee) A
where row_num = 2 


-- select (
--     select distinct salary
--     from employee
--     order by salary desc
--     limit 1 offset 1
-- ) as SecondHighestSalary