# Write your MySQL query statement below
-- delete p1 
-- from person p1, person p2
-- where p1.email = p2.email and p1.id > p2.id

-- delete p1
-- from person p1 join person p2 on p1.email = p2.email
-- where p1.id > p2.id

delete
from person
where id in (
    select id
    from
    (
        select id, row_number() over (partition by email order by id) as row_num
        from person
    ) p_row_num
    where p_row_num.row_num > 1
)