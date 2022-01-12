SELECT InvoiceId, CustomerId, TotalChillerItems, TotalDryItems, ConfirmedDeliveryTime
FROM Sales.Invoices
WHERE ConfirmedDeliveryTime BETWEEN '2016-01-07 00:00:00.000' AND '2016-01-07 23:59:59.998'
ORDER BY ConfirmedDeliveryTime DESC

go

CREATE NONCLUSTERED INDEX [IX_Sales_Invoices_ConfirmedDelivery_TotalDry_TotalChiller] 
ON Sales.Invoices (ConfirmedDeliveryTime) 
INCLUDE (CustomerId, TotalDryItems, TotalChillerItems)

go

DROP INDEX IX_Sales_Invoices_ConfirmedDelivery_TotalDry_TotalChiller
ON Sales.Invoices
