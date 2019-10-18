select email, store, count(purchaseId)
from Customer, customerPurchases, Purchase
where Customer.id = customerPurchases.customerId and customerPurchases.purchaseId = Purchase.id
group by email, store with rollup;