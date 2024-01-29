/*** To compare the number of columns in source & target tables 
	 In Customer table I will find 1 extra column, its the Country column due to the Join**/

SELECT TABLE_NAME, COUNT(*) AS NumberOfColumns
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'Production'
GROUP BY TABLE_NAME;

SELECT TABLE_NAME, COUNT(*) AS NumberOfColumns
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'dbo' AND TABLE_NAME IN ('DimCurrency', 'DimCustomer', 'DimDate', 'DimProduct', 'FactInternetSales')
GROUP BY TABLE_NAME;
