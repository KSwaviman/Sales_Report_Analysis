SET IDENTITY_INSERT Production.DimCustomer ON;

INSERT INTO Production.DimCustomer (
    CustomerKey, GeographyKey, CustomerAlternateKey, Title, FirstName, MiddleName, LastName, 
    NameStyle, BirthDate, MaritalStatus, Suffix, Gender, EmailAddress, YearlyIncome, 
    TotalChildren, NumberChildrenAtHome, EnglishEducation, SpanishEducation, 
    FrenchEducation, EnglishOccupation, SpanishOccupation, FrenchOccupation, 
    HouseOwnerFlag, NumberCarsOwned, AddressLine1, AddressLine2, Phone, 
    DateFirstPurchase, CommuteDistance, Country -- Include all other columns here
)
SELECT 
    CustomerKey, GeographyKey, CustomerAlternateKey, Title, FirstName, MiddleName, LastName, 
    NameStyle, BirthDate, MaritalStatus, Suffix, Gender, EmailAddress, YearlyIncome, 
    TotalChildren, NumberChildrenAtHome, EnglishEducation, SpanishEducation, 
    FrenchEducation, EnglishOccupation, SpanishOccupation, FrenchOccupation, 
    HouseOwnerFlag, NumberCarsOwned, AddressLine1, AddressLine2, Phone, 
    DateFirstPurchase, CommuteDistance, NULL -- Or appropriate value for Country
FROM dbo.DimCustomer
WHERE CustomerKey IN (
    SELECT DISTINCT f.CustomerKey
    FROM dbo.FactInternetSales f
    WHERE NOT EXISTS (
        SELECT 1 FROM Production.DimCustomer c WHERE c.CustomerKey = f.CustomerKey
    )
)
AND NOT EXISTS (
    SELECT 1 FROM Production.DimCustomer c WHERE c.CustomerAlternateKey = dbo.DimCustomer.CustomerAlternateKey
);

SET IDENTITY_INSERT Production.DimCustomer OFF;
