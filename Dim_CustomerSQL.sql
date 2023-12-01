-- Cleaning the Dim_Customer Table:

SELECT 
  c.CustomerKey,
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  c.FirstName, 
  --,[MiddleName]
  c.LastName, 
  FirstName + ' ' + LastName AS FullName,
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  CASE Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
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
  c.DateFirstPurchase,
  --,[CommuteDistance]
  g.City AS CustomerCity -- Joined Customer City from Geography Table
FROM 
  AdventureWorksDW2022.dbo.DimCustomer AS c 
  LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey 
ORDER BY 
  CustomerKey ASC;