
-- Roll-up: Total sales by country and quarter
SELECT c.Country,
	   strftime('%Y', s.InvoiceDate) AS Year,
	   ((strftime('%m', s.InvoiceDate)-1)/3 + 1) AS Quarter,
	   SUM(s.TotalSales) AS TotalSales
FROM SalesFact s
JOIN CustomerDim c ON s.CustomerID = c.CustomerID
GROUP BY c.Country, Year, Quarter
ORDER BY c.Country, Year, Quarter;

-- Drill-down: Sales details for a specific country by month (example: Netherlands)
SELECT s.InvoiceNo, s.InvoiceDate, s.TotalSales, strftime('%Y-%m', s.InvoiceDate) AS YearMonth
FROM SalesFact s
JOIN CustomerDim c ON s.CustomerID = c.CustomerID
WHERE c.Country = 'Netherlands'
ORDER BY YearMonth, s.InvoiceNo;

-- Slice: Total sales for electronics category (assuming StockCode for electronics contains 'ELECTRONICS')
SELECT SUM(TotalSales) AS ElectronicsSales
FROM SalesFact
WHERE StockCode LIKE '%ELECTRONICS%';
