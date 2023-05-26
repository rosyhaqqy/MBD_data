SELECT Customer.FirstName || ' ' || Customer.LastName AS CustomerName, 
      SUM(Invoice.Total) AS TotalSales
FROM Customer
JOIN Invoice ON Customer.CustomerId = Invoice.CustomerId
GROUP BY Customer.CustomerId, Customer.FirstName, Customer.LastName
ORDER BY TotalSales DESC
LIMIT 10;
