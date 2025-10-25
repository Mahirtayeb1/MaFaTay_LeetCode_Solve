select 
    email
from person
group by email
having count(email) > 1;


-- as id is primary key then most optimised code  is

select 
    email
from person
group by email
having count(id) > 1;