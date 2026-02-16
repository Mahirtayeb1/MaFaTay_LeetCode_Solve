# Write your MySQL query statement below
select 
    p.firstName as firstName,
    p.lastName as lastName,
    a.City as city,
    a.State as state
FROM PERSON p
LEFT JOIN address a on p.personId = a.personId