SELECT Album.Title, Artist.Name, SUM(InvoiceLine.Quantity) AS TotalSales
FROM Album
JOIN Artist ON Album.ArtistId = Artist.ArtistId
JOIN Track ON Album.AlbumId = Track.AlbumId
JOIN InvoiceLine ON Track.TrackId = InvoiceLine.TrackId
GROUP BY Album.AlbumId, Album.Title, Artist.Name
ORDER BY SUM(InvoiceLine.Quantity) DESC
LIMIT 1;
