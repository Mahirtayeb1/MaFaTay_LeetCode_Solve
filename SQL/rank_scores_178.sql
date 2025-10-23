-- with subquery --> high runtime (100ms+)
Select
  s.score,
  (
    SELECT COUNT(DISTINCT s2.score)
    FROM scores s2
    WHERE s2.score > s.score
  ) + 1 as 'rank'

from scores s
order by s.score desc;


-- with window functions --> low runtime (67ms)
select
    s.score,
    dense_rank() over(order by s.score desc) as 'rank'
from scores
order by s.score desc;
