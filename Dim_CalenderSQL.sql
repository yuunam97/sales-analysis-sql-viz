-- Cleaning DimDate Table:
SELECT 
  DateKey AS DateKey, 
  FullDateAlternateKey AS Date,
  --,[DayNumberOfWeek], 
  EnglishDayNameOfWeek AS Day,
  --,[SpanishDayNameOfWeek],
  --,[FrenchDayNameOfWeek],
  --,[DayNumberOfMonth],
  --,[DayNumberOfYear], 
  WeekNumberOfYear AS WeekNr, 
  EnglishMonthName AS Month,
  LEFT(EnglishMonthName, 3) AS MonthShort, -- View first three letters of month
  --,[SpanishMonthName],
  --,[FrenchMonthName],
  MonthNumberOfYear As MonthNo, 
  CalendarQuarter AS Quarter, 
  CalendarYear AS Year
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]W
  --,[FiscalSemester]
FROM 
  AdventureWorksDW2022.dbo.DimDate
-- Wanted a two year back from 2023 -> 2021 sales:
WHERE CalendarYear >= 2019;
