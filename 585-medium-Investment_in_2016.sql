-- Write your MySQL query statement below
-- https://leetcode.com/problems/investments-in-2016/?envType=study-plan-v2&envId=top-sql-50
with multi_tiv2015 as (
    select tiv_2015
    from insurance
    group by tiv_2015
    having count(*) > 1
), unique_loc as (
    select lat, lon
    from insurance
    group by lat, lon
    having count(*) = 1
)


select round(sum(tiv_2016),2) as tiv_2016
from insurance
where tiv_2015 in (select tiv_2015 from multi_tiv2015) and (lat, lon) in (select * from unique_loc)