-- Write your MySQL query statement below
-- https://leetcode.com/problems/find-users-with-valid-e-mails/description/?envType=study-plan-v2&envId=top-sql-50
select *
from users
where mail regexp '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode[.]com$'