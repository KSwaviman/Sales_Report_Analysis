
INSERT INTO Production.DimCurrency (CurrencyAlternateKey, CurrencyName)
SELECT CurrencyAlternateKey, CurrencyName
FROM dbo.DimCurrency;


INSERT INTO Production.DimDate (
    DateKey, FullDateAlternateKey, DayNumberOfWeek, EnglishDayNameOfWeek, 
    SpanishDayNameOfWeek, FrenchDayNameOfWeek, DayNumberOfMonth, DayNumberOfYear, 
    WeekNumberOfYear, EnglishMonthName, SpanishMonthName, FrenchMonthName, 
    MonthNumberOfYear, CalendarQuarter, CalendarYear, CalendarSemester, 
    FiscalQuarter, FiscalYear, FiscalSemester
)
SELECT 
    DateKey, FullDateAlternateKey, DayNumberOfWeek, EnglishDayNameOfWeek, 
    SpanishDayNameOfWeek, FrenchDayNameOfWeek, DayNumberOfMonth, DayNumberOfYear, 
    WeekNumberOfYear, EnglishMonthName, SpanishMonthName, FrenchMonthName, 
    MonthNumberOfYear, CalendarQuarter, CalendarYear, CalendarSemester, 
    FiscalQuarter, FiscalYear, FiscalSemester
FROM dbo.DimDate;

INSERT INTO Production.DimProduct (
    ProductAlternateKey, ProductSubcategoryKey, WeightUnitMeasureCode, 
    SizeUnitMeasureCode, EnglishProductName, SpanishProductName, FrenchProductName, 
    StandardCost, FinishedGoodsFlag, Color, SafetyStockLevel, ReorderPoint, 
    ListPrice, Size, SizeRange, Weight, DaysToManufacture, ProductLine, 
    DealerPrice, Class, Style, ModelName, LargePhoto, EnglishDescription, 
    FrenchDescription, ChineseDescription, ArabicDescription, HebrewDescription, 
    ThaiDescription, GermanDescription, JapaneseDescription, TurkishDescription, 
    StartDate, EndDate, Status
)
SELECT 
    ProductAlternateKey, ProductSubcategoryKey, WeightUnitMeasureCode, 
    SizeUnitMeasureCode, EnglishProductName, SpanishProductName, FrenchProductName, 
    StandardCost, FinishedGoodsFlag, Color, SafetyStockLevel, ReorderPoint, 
    ListPrice, Size, SizeRange, Weight, DaysToManufacture, ProductLine, 
    DealerPrice, Class, Style, ModelName, LargePhoto, EnglishDescription, 
    FrenchDescription, ChineseDescription, ArabicDescription, HebrewDescription, 
    ThaiDescription, GermanDescription, JapaneseDescription, TurkishDescription, 
    StartDate, EndDate, Status
FROM dbo.DimProduct;



/*
INSERT INTO Production.DimCustomer (
    GeographyKey, CustomerAlternateKey, Title, FirstName, MiddleName, LastName, 
    NameStyle, BirthDate, MaritalStatus, Suffix, Gender, EmailAddress, YearlyIncome, 
    TotalChildren, NumberChildrenAtHome, EnglishEducation, SpanishEducation, 
    FrenchEducation, EnglishOccupation, SpanishOccupation, FrenchOccupation, 
    HouseOwnerFlag, NumberCarsOwned, AddressLine1, AddressLine2, Phone, 
    DateFirstPurchase, CommuteDistance
)
SELECT 
    c.GeographyKey, c.CustomerAlternateKey, c.Title, c.FirstName, c.MiddleName, c.LastName, 
    c.NameStyle, c.BirthDate, c.MaritalStatus, c.Suffix, c.Gender, c.EmailAddress, c.YearlyIncome, 
    c.TotalChildren, c.NumberChildrenAtHome, c.EnglishEducation, c.SpanishEducation, 
    c.FrenchEducation, c.EnglishOccupation, c.SpanishOccupation, c.FrenchOccupation, 
    c.HouseOwnerFlag, c.NumberCarsOwned, c.AddressLine1, c.AddressLine2, c.Phone, 
    c.DateFirstPurchase, c.CommuteDistance
FROM dbo.DimCustomer c
LEFT JOIN dbo.DimGeography g ON c.GeographyKey = g.GeographyKey;
*/

WAITFOR DELAY '00:00:04';



INSERT INTO Production.FactInternetSales (
    ProductKey, OrderDateKey, DueDateKey, ShipDateKey, CustomerKey,PromotionKey, CurrencyKey, 
    SalesTerritoryKey, SalesOrderNumber, SalesOrderLineNumber, RevisionNumber, 
    OrderQuantity, UnitPrice, ExtendedAmount, UnitPriceDiscountPct, DiscountAmount, 
    ProductStandardCost, TotalProductCost, SalesAmount, TaxAmt, Freight, 
    CarrierTrackingNumber, CustomerPONumber, OrderDate, DueDate, ShipDate
)
SELECT 
    ProductKey, OrderDateKey, DueDateKey, ShipDateKey, CustomerKey,PromotionKey, CurrencyKey, 
    SalesTerritoryKey, SalesOrderNumber, SalesOrderLineNumber, RevisionNumber, 
    OrderQuantity, UnitPrice, ExtendedAmount, UnitPriceDiscountPct, DiscountAmount, 
    ProductStandardCost, TotalProductCost, SalesAmount, TaxAmt, Freight, 
    CarrierTrackingNumber, CustomerPONumber, OrderDate, DueDate, ShipDate
FROM dbo.FactInternetSales;




