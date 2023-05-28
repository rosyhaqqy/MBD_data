SELECT 'Album' AS Type, SUM(Invoice.Total) AS TotalSales
FROM Album
JOIN Artist ON Album.ArtistId = Artist.ArtistId
JOIN Track ON Album.AlbumId = Track.AlbumId
JOIN InvoiceLine ON Track.TrackId = InvoiceLine.TrackId
JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY Type
UNION
SELECT 'Track' AS Type, SUM(Invoice.Total) AS TotalSales
FROM Track
JOIN Genre ON Track.GenreId = Genre.GenreId
JOIN InvoiceLine ON Track.TrackId = InvoiceLine.TrackId
JOIN Invoice ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY Type;
