-- most less runtime
select player_id,min(event_date)as first_login from Activity
group by player_id

-- my solve:
select
    player_id,
    min(event_date) as first_login
from Activity
group by 1
order by 1 asc, 2 asc;