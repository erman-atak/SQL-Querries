-- Provide a query that shows the total sales per country with 2 decimal points 
SELECT BillingCountry, 
	printf("$%.2f", sum(Total)) AS Total
FROM invoices
GROUP BY BillingCountry
ORDER BY Total DESC;