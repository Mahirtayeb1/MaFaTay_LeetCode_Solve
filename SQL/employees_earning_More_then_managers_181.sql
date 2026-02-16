# Write your MySQL query statement below
select 
    em.name as Employee
from employee e
left join employee em on e.id = em.managerId
where em.salary > e.salary