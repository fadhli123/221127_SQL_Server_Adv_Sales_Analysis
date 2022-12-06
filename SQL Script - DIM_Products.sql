-- Cleansed DIM_Product Table --
SELECT 
	p.[ProductKey],
    p.[ProductAlternateKey] AS [ProductItemCode],
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
    p.[EnglishProductName] AS [ProductName],
	ps.EnglishProductSubcategoryName AS [SubCategory],
	pc.EnglishProductCategoryName AS [ProductCategory],
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
    p.[Color] AS [ProducColor],
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
    p.[Size] AS [ProductSize],
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
    p.[ProductLine] AS [ProductLine],
      --,[DealerPrice]
      --,[Class]
      --,[Style]
    p.[ModelName] AS [ProductModelName],
      --,[LargePhoto]
    p.[EnglishDescription] AS [ProductEnglishDescription],
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      --,[Status]
	ISNULL (p.Status , 'Outdated') AS [ProductStatus]
  FROM	
	[AdventureWorksDW2014].[dbo].[DimProduct] AS p
	LEFT JOIN AdventureWorksDW2014.dbo.DimProductSubcategory as ps ON ps.ProductSubcategoryKey = p.productsubcategorykey
	LEFT JOIN AdventureWorksDW2014.dbo.DimProductCategory as pc ON ps.ProductCategoryKey = pc.ProductCategoryKey
  ORDER BY
	p.ProductKey ASC
