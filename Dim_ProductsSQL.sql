-- Cleaning Dim_Products Table:

SELECT 
  p.ProductKey, 
  p.ProductAlternateKey AS ProductItemCode, 
  --      ,[ProductSubcategoryKey], 
  --      ,[WeightUnitMeasureCode]
  --      ,[SizeUnitMeasureCode] 
  p.EnglishProductName AS ProductName, 
  ps.EnglishProductSubcategoryName AS SubCategory, -- Joined in from Sub Category Table
  pc.EnglishProductCategoryName AS ProductCategory, -- Joined in from Category Table
  --      ,[SpanishProductName]
  --      ,[FrenchProductName]
  --      ,[StandardCost]
  --      ,[FinishedGoodsFlag] 
  p.Color AS ProductColor, 
  --      ,[SafetyStockLevel]
  --      ,[ReorderPoint]
  --      ,[ListPrice] 
  p.Size AS ProductSize, 
  --      ,[SizeRange]
  --      ,[Weight]
  --      ,[DaysToManufacture]
  p.ProductLine,
  --     ,[DealerPrice]
  --      ,[Class]
  --      ,[Style] 
  p.ModelName AS ProductModelName, 
  --      ,[LargePhoto]
  p.EnglishDescription AS ProductDescription, 
  --      ,[FrenchDescription]
  --      ,[ChineseDescription]
  --      ,[ArabicDescription]
  --      ,[HebrewDescription]
  --      ,[ThaiDescription]
  --      ,[GermanDescription]
  --      ,[JapaneseDescription]
  --      ,[TurkishDescription]
  --      ,[StartDate], 
  --      ,[EndDate], 
  ISNULL (p.Status, 'Outdated') AS ProductStatus -- If Null values, then `outdated`
FROM 
  [AdventureWorksDW2022].[dbo].[DimProduct] as p
  LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey 
order by 
  p.ProductKey asc