SELECT Playlist.Name, COUNT(PlaylistTrack.TrackId) AS SongCount
FROM Playlist
JOIN PlaylistTrack ON Playlist.PlaylistId = PlaylistTrack.PlaylistId
GROUP BY Playlist.PlaylistId, Playlist.Name;
