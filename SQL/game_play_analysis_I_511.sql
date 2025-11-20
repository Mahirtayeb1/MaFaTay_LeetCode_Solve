

-- my solve 1:
select
    player_id,
    min(event_date) as first_login
from Activity
group by 1
order by 1 asc, 2 asc;

-- my solve 2:
select 
    player_id,
    min(event_date) as first_login
from Activity
group by 1;