--1-- 
INSERT INTO  artists (name)
VALUES ("agust d"); 

--2--
INSERT INTO albums (Title, ArtistId)
VALUES ("D-2", 276);

--3--
INSERT INTO tracks (name, AlbumId, MediaTypeId, Milliseconds, UnitPrice)
VALUES ("people", 348, 3, 164000, 0.99),
		("moonlight", 348, 3, 197000, 0.99),
		("strange", 348, 3, 198000, 0.99);
--4--
SELECT * FROM tracks 
WHERE AlbumId = 348

UPDATE tracks 
SET GenreId = 17
WHERE AlbumId = 348   

--5--
UPDATE tracks 
SET Composer = "agust d, pdogg"
WHERE TrackId = 3504


SELECT * FROM tracks 
WHERE TrackId = 3504

--
SELECT * FROM tracks 
WHERE TrackId = 3505
   
UPDATE tracks 
SET Composer = "agust d, ghstloop"
WHERE TrackId = 3505

--

SELECT * FROM tracks 
WHERE TrackId = 3506
   
UPDATE tracks 
SET Composer = "agust d, ghstloop, el capitxn, rm"

--

SELECT * FROM tracks 
WHERE TrackId = 3506
   
UPDATE tracks 
SET Bytes = 3563662
WHERE TrackId = 3506

--
SELECT * FROM tracks 
WHERE TrackId = 3505
   
UPDATE tracks 
SET Bytes = 3563668
WHERE TrackId = 3505

--
SELECT * FROM tracks 
WHERE TrackId = 3504
   
UPDATE tracks 
SET Bytes = 3567668
WHERE TrackId = 3504

--delete--
DELETE FROM tracks
WHERE TrackId = 3504 or TrackId = 3505  or TrackId = 3506

--

DELETE FROM albums
WHERE AlbumId = 348

DELETE FROM artists
WHERE ArtistId = 276