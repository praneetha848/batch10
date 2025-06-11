select
  id,
  sum(spent) as total_amount
from {{ ref('customers')}}
group by 1
having total_amount < 0