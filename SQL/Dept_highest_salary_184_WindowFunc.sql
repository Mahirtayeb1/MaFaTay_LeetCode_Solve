# Write your MySQL query statement below
with ranking as (
select
    d.name as Department,
    e.name as Employee,
    e.salary as Salary,
    rank() over (partition by d.name order by e.salary desc) as Salary_rank
from employee e
left join department d on d.id = e.departmentId) 

select 
     Department,
     Employee,
     Salary
from ranking
where salary_rank = 1