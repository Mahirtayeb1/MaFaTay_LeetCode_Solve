select 
    user_id,
    CONCAT(
        UPPER(SUBSTRING(name, 1, 1)),             -- SUBSTRING(column, start, length)
        LOWER(SUBSTRING(name, 2, LENGTH(name)))
    ) AS name
from users
order by user_id asc;