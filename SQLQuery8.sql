/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [ProductKey]
      ,[OrderDateKey]
      ,[DueDateKey]
      ,[ShipDateKey]
      ,[CustomerKey]
	  ,[SalesAmount]
	  ,[SalesOrderNumber]
  FROM [AdventureWorksDW2019].[dbo].[FactInternetSales]