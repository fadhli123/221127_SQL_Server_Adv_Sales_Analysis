/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
	c.customerkey AS [CustomerKey],
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
    c.firstname AS [FirstName],
      --,[MiddleName]
	c.lastname AS [LastName],
	c.firstname + ' ' + c.lastname AS [Full Name], -- combine last name and full name
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
    CASE c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS [Gender], -- Change the data of gender
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
      --,[NumberChildrenAtHome]
      --,[EnglishEducation]
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      --,[HouseOwnerFlag]
      --,[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      c.datefirstpurchase AS [DateFirstPurchase],
      --,[CommuteDistance]
	  g.city AS [Customer City], -- join table from DimGeography Table
	  g.englishcountryregionname AS [Region]
  FROM 
	[AdventureWorksDW2014].[dbo].[DimCustomer] as c
	LEFT JOIN dbo.DimGeography as g ON g.geographykey = c.geographykey
  ORDER BY
  CustomerKey ASC -- ordered list by customer key
