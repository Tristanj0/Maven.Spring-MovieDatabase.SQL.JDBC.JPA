INSERT INTO Movies (Title, Runtime, Genre, IMDB_Score, Rating) VALUES ('Howard the Duck', 110, 'Sci-Fi', 4.6, 'PG');

INSERT INTO Movies (Title, Runtime, Genre, IMDB_Score, Rating) VALUES ('Lavalantula', 83, 'Horror', 4.7, 'TV-14');

INSERT INTO Movies (Title, Runtime, Genre, IMDB_Score, Rating) VALUES ('Starship Troopers', 129, 'Sci-Fi', 7.2, 'PG-13');

INSERT INTO Movies (Title, Runtime, Genre, IMDB_Score, Rating) VALUES ('Waltz With Bashir', 90, 'Documentary', 8.0, 'R');

INSERT INTO Movies (Title, Runtime, Genre, IMDB_Score, Rating) VALUES ('Spaceballs', 96, 'Comedy', 7.1, 'PG');

INSERT INTO Movies (Title, Runtime, Genre, IMDB_Score, Rating) VALUES ('Monsters Inc.', 92, 'Animation', 8.1, 'G');

SELECT * FROM Movies WHERE Genre='Sci-Fi';

SELECT * FROM Movies WHERE IMDB_Score > 6.5;

SELECT * FROM Movies WHERE (Rating= 'G' or Rating = 'PG') and Runtime > 100;

SELECT AVG (Runtime) FROM Movies WHERE IMDB_Score < 7.5 GROUP BY Genre;

UPDATE Movies SET Rating='R' WHERE Title= 'Starship Troopers';

SELECT Id, Rating FROM Movies WHERE Genre = 'Horror' or Genre = 'Documentary';

SELECT MAX (IMDB_Score), AVG (IMDB_Score), MIN (IMDB_Score), Rating FROM Movies GROUP BY Rating;

SELECT MAX (IMDB_Score), AVG (IMDB_Score), MIN (IMDB_Score), Rating FROM Movies GROUP BY Rating HAVING COUNT (*) > 1;

DELETE FROM Movies WHERE Rating = 'R';
