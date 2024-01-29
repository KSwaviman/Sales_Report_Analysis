
UPDATE c
SET c.Country = g.EnglishCountryRegionName
FROM Production.DimCustomer AS c
JOIN dbo.DimGeography AS g ON c.GeographyKey = g.GeographyKey;
