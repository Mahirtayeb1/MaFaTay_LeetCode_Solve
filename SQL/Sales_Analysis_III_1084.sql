
Select 
    s.product_id, 
    p.product_name
from sales s 
    left join Product p on s.product_id = p.product_id
-- where s.sale_date between '2019-01-01' and '2019-03-31'
group by s.product_id, p.product_name
having min(s.sale_date) >= '2019-01-01' and max(s.sale_date) <= '2019-04-01'; 

-- Even though s.sale_date isn’t in SELECT, it exists inside each group, so SQL can compute aggregates from it.