--respuesta 1
CREATE DATABASE peliculas;
--respuesta 2
CREATE TABLE peliculas(id INT, pelicula VARCHAR(70), año SMALLINT, director VARCHAR(100), PRIMARY KEY(id));
CREATE TABLE reparto(id INT, actors VARCHAR(70), FOREIGN KEY(id) REFERENCES peliculas(id));
--respuesta 3
\copy peliculas FROM '/home/patan/Escritorio/DATA_BASE/pelicula/peliculas.csv' CSV HEADER;
\copy reparto FROM '/home/patan/Escritorio/DATA_BASE/pelicula/reparto.csv' CSV HEADER;
--respuesta 4
SELECT peliculas.pelicula, peliculas.año,  peliculas.director, reparto.actors FROM peliculas, reparto WHERE pelicula='Titanic';
--respuesta 5
SELECT peliculas.pelicula FROM reparto, peliculas WHERE actors='Harrison Ford' AND peliculas.id = reparto.id;
--respuesta 6
SELECT director, count(*) FROM peliculas GROUP BY director ORDER BY count DESC LIMIT 10;
--respuesta 7
SELECT COUNT (DISTINCT actors) FROM reparto;
--respuesta 8
SELECT pelicula, año FROM peliculas WHERE año >= 1990 AND año <= 1999 ORDER BY año ASC;
--respuesta 9
SELECT reparto.actors, peliculas.año FROM reparto, peliculas WHERE año= 2001 AND peliculas.id = reparto.id;
--respuesta 10
SELECT pelicula, año,  actors FROM peliculas LEFT JOIN reparto ON peliculas.id = reparto.id ORDER BY año DESC, pelicula;