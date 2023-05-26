SELECT ArtistName, AlbumCount, TotalDuration
FROM (
    SELECT Artist.Name AS ArtistName, COUNT(DISTINCT Album.AlbumId) AS AlbumCount, SUM(Track.Milliseconds) AS TotalDuration,
           ROW_NUMBER() OVER (ORDER BY COUNT(DISTINCT Album.AlbumId) DESC) AS Rank
    FROM Artist
    JOIN Album ON Artist.ArtistId = Album.ArtistId
    JOIN Track ON Album.AlbumId = Track.AlbumId
    GROUP BY Artist.ArtistId, Artist.Name
) AS RankedArtists
WHERE Rank <= 10;
