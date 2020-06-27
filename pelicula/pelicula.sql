--respuesta 1
CREATE DATABASE peliculas;
--respuesta 2
\c peliculas
CREATE TABLE peliculas(id_pelicula SERIAL PRIMARY KEY, pelicula VARCHAR(70), año SMALLINT, director VARCHAR(100));
CREATE TABLE reparto(id_reparto INT, actors VARCHAR(70));
--respuesta 3
\copy peliculas FROM '/home/patan/Escritorio/DATA_BASE/pelicula/peliculas.csv' CSV HEADER;
\copy reparto FROM '/home/patan/Escritorio/DATA_BASE/pelicula/reparto.csv' CSV;

ALTER TABLE reparto ADD id_pelicula INT;
ALTER TABLE reparto ADD CONSTRAINT FKid_reparto FOREIGN KEY (id_reparto) REFERENCES peliculas(id_pelicula);
--respuesta 4
SELECT peliculas.pelicula, reparto.actors FROM peliculas, reparto WHERE peliculas.id_pelicula= reparto.id_reparto AND pelicula='Titanic';
--respuesta 5
SELECT peliculas.pelicula, reparto.actors FROM reparto, peliculas WHERE actors='Harrison Ford' AND peliculas.id_pelicula= reparto.id_reparto;
--respuesta 6
SELECT director, count(*) FROM peliculas GROUP BY director ORDER BY count DESC LIMIT 10;
--respuesta 7
SELECT COUNT (DISTINCT actors) FROM reparto;
--respuesta 8
SELECT pelicula, año FROM peliculas WHERE año >= 1990 AND año <= 1999 ORDER BY año ASC;
--respuesta 9
SELECT reparto.actors, peliculas.año FROM reparto, peliculas WHERE año= 2001 AND peliculas.id_pelicula= reparto.id_reparto;
--respuesta 10
SELECT pelicula, año,  actors FROM peliculas LEFT JOIN reparto ON peliculas.id_pelicula= reparto.id_reparto ORDER BY año DESC, pelicula;