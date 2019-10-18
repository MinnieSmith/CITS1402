select customerId, count(coneId) as totalNumberOfConesBrought
from customerPurchases C join conesInPurchase D
on C.PurchaseId = D.PurchaseId
group by customerid
order by totalNumberOfConesBrought desc;