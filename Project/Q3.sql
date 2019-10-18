select monthname(buyDate) as month, count(id) as numPurchases
from purchase
group by month;