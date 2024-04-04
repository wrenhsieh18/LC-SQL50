-- Write your MySQL query statement below
-- https://leetcode.com/problems/department-top-three-salaries/description/?envType=study-plan-v2&envId=top-sql-50

with high_earners as (
    select id, 
        name, 
        salary,
        departmentId,
        dense_rank() over (partition by departmentId order by salary desc) as ranking
    from employee
)

select department.name as Department,
       high_earners.name as Employee,
       high_earners.salary as Salary
from high_earners
left join department on high_earners.departmentID = department.id
where high_earners.ranking <= 3