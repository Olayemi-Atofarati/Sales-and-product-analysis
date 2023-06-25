/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [ProductKey]
      ,[ProductAlternateKey] AS ProductItemCode
      ,[EnglishProductName] AS ProductName
	  ,[EnglishProductSubcategoryName] AS Subcategory
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] AS p
  INNER JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  INNER JOIN dbo.DimProductCategory AS pc ON pc.ProductCategoryKey = ps.ProductCategoryKey 