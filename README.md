# Sales_Report_Analysis

## 1. Context:
This business case mirrors real-world challenges. A databse of a fictitious company named "AdventureWorks Cycles" is used. </br>
<p>This project is to setup an SQL Data Warehouse, seed it with data from a fictitious company's sales record, calculate Key Performance Indicators and develop sales dashboards in order to answer some critical business questions. The company of interest here is, AdventureWorks, a bicycle & bicycle accesories manufacturer and retailer operating in the United States. They serve a diverse customer base across the nation and abroad, offering a comprehensive range of cycling products. Their business model is focused on selling a variety 
of items such as road bikes, mountain bikes, bike parts, helmets, apparel, and other cycling 
accessories. AdvetureWorks sells its products both direct-to-consumer via its e-commerce 
(D2C) and to resellers (B2B). For this project, the business case will only focus on online sales 
(D2C). </p>

## 2. Technical Requirements:
- **SQL Server installed in your local machine**
- **SSMS Studio**
- **Power BI Desktop**

AdventureWorks Databse can be found [here](https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks).
More information about AdventureWorks database can be found [here](https://dataedo.com/samples/html/Data_warehouse/doc/AdventureWorksDW_4/home.html).

## 3. Objectives:
1. Download and explore the AdventureWorks DW 2022 database. 
2. Build a data warehouse focused on sales information. 
3. Calculate Key Performance Indicators (KPIs). 
4. Create a Sales Dashboard to answer critical business questions mentioned in subsection 3.4.

  ### 3.1  Download and Explore the AdventureWorks DW 2022 Database.
  ### 3.2  Build a Data Warehouse.
  Extract sales data from the AdventureWorks DW 2022 database to populate the 
warehouse. </br>**Deliverable:** A functional data warehouse. Create a new database to insert the tables needed 
for the analysis. Within this database create a schema “Production” to store the tables. 
You can find additional information about the tables used for the exercise [here](https://dataedo.com/samples/html/Data_warehouse/doc/AdventureWorksDW_4/modules/Internet_Sales_101/module.html).
  
  **Tables in Production:** The production layer should have the following tables:</br>
o production.Sales (from dbo.FactInternetSales) </br>
o production.Date (from dbo.DimDate) </br>
o production.Currency (from dbo.DimCurrency) </br>
o production.Products (from dbo.DimProduct) </br>
o production.Customers (from dbo.DimCustomer) </br>
- for customers perform a join to retrieve information about the country of the customer 
from the table dbo.DimGeography

### 3.3  Calculate Key Performance Indicators (KPIs).
  Once the DataWarehouse in SQL Server is created, use it as the source of the 
PowerBI report to calculate specific KPIs for sales. Outcome should be a PBI report with calculated measures using DAX.

KPIs to Calculate: 
1. Revenue 
2. Number of customers 
3. Number of orders 
4. Volume 
5. AOV (Average Order Value) 
6. UPT (Units per Transaction) 
7. Orders per Customer 
8. Revenue per customer 
9. Average Price 

  ### 3.4 Create a Sales Dashboard to answer critical business questions.

• What was the revenue in FY 2012 and FY 2013 (Assume Fiscal Year Starts 01/01 and 
ends 31/12)? </br>
• In FY 2013, which country had the highest AOV? </br>
• How did the Orders per customer increase over the years? </br>
• What is the peak month in terms of sales? Is the business seasonal? </br>
• What explains the increase in revenue between FY 2012 and FY 2013? </br>
&nbsp;&nbsp;&nbsp;&nbsp;o Was the increase related to the launch of new products? </br>
&nbsp;&nbsp;&nbsp;&nbsp;o Was the increase related to a price effect? </br>
&nbsp;&nbsp;&nbsp;&nbsp;o Was the increase related to a volume effect? </br>
&nbsp;&nbsp;&nbsp;&nbsp;o Was the increase related to new customers?</br>

Final Deliverable:</br>
Developed an SQL Server data warehouse with a 'Production' schema and built PowerBI reporting and sales KPI analysis.

A brief walkthrough of the BI Dashboard.



https://github.com/KSwaviman/Sales_Report_Analysis/assets/20270507/62a406e4-06f2-45dd-9200-69eed38c5540


