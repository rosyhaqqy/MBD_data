SELECT Genre.Name AS GenreName, SUM(Invoice.Total) AS TotalSales
FROM Genre
JOIN Track ON Genre.GenreId = Track.GenreId
JOIN InvoiceLine ON Track.TrackId = InvoiceLine.TrackId
JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY Genre.GenreId, Genre.Name
ORDER BY SUM(Invoice.Total) DESC
LIMIT 5;
