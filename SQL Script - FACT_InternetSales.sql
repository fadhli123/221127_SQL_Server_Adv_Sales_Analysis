-- Cleansed FACT Internet Sales Table -- 
SELECT 
	[ProductKey],
    [OrderDateKey],
    [DueDateKey],
    [ShipDateKey],
    [CustomerKey],
      --,[PromotionKey]
      --,[CurrencyKey]
      --,[SalesTerritoryKey]
    [SalesOrderNumber],
      --,[SalesOrderLineNumber]
      --,[RevisionNumber]
      --,[OrderQuantity]
      --,[UnitPrice]
      --,[ExtendedAmount]
      --,[UnitPriceDiscountPct]
      --,[DiscountAmount]
      --,[ProductStandardCost]
      --,[TotalProductCost]
    [SalesAmount]
      --,[TaxAmt]
      --,[Freight]
      --,[CarrierTrackingNumber]
      --,[CustomerPONumber]
      --,[OrderDate]
      --,[DueDate]
      --,[ShipDate]
FROM 
	[AdventureWorksDW2014].[dbo].[FactInternetSales]
WHERE 
	LEFT (OrderDateKey, 4) >= YEAR(GETDATE()) - 3 -- year of today 2022 minus 3 which is 2019
ORDER BY
	OrderDateKey ASC