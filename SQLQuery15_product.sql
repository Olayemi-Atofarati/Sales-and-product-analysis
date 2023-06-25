/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
       p.[ProductKey]
	  ,p.[ProductAlternateKey] AS ProductItemCode
      ,p.[EnglishProductName] AS [Product Name]
	  ,ps.[EnglishProductSubcategoryName] AS [Sub Category]
	  ,pc.[EnglishProductCategoryName] AS [Product Category]
      ,p.[Color] AS [Product Color]
      ,p.[Size] AS [Product Size]
	  ,p.[ProductLine] AS [Product Line]
      ,p.[ModelName] AS [Product Model Name]
      ,p.[EnglishDescription] AS [Product Description]
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] AS p
  INNER JOIN [AdventureWorksDW2019].[dbo].[DimProductSubcategory] AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
  INNER JOIN [AdventureWorksDW2019].[dbo].[DimProductCategory] AS pc ON pS.ProductCategoryKey = pc.ProductCategoryKey
  ORDER BY p.ProductKey ASC