--crear base de datos
CREATE DATABASE posts;
--pregunta 2 parte i
CREATE TABLE post(id SERIAL, nombre_de_usuario VARCHAR(70), fecha_de_creacion DATE, contenido VARCHAR(500), descripcion VARCHAR(500), PRIMARY KEY (id));
--pregunta 3 parte i
INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES ('Pamela', '2020-06-16','saludos','comunidad de foros de ayuda'),('Pamela', '2020-06-16','consultas','comunidad de ayuda'), ('Carlos', '2020-06-16', 'tutoriales', 'nuevos temas de la actualidad');
--pregunta 4 parte i
ALTER TABLE post ADD "titulo" VARCHAR(50);
--pregunta 5 parte i
UPDATE post SET titulo='otros' WHERE contenido= 'saludos';
UPDATE post SET titulo='educacion' WHERE contenido= 'tutoriales';
UPDATE post SET titulo='dudas' WHERE contenido= 'consultas';
--pregunta 6 parte i
INSERT INTO post(id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion,titulo) VALUES ('Pedro', '2020-06-17','salas','comunidad de foros de ayuda','nuevos'),('Pedro', '2020-06-18','musica','música de los 80','entretenimiento');
--pregunta 7 parte i
DELETE FROM post WHERE nombre_de_usuario='Carlos';
--pregunta 8 parte i
INSERT INTO post( nombre_de_usuario, fecha_de_creacion, contenido, descripcion,titulo) VALUES ('Carlos', '2020-06-18','juegos','nuevos juegos','entretenimiento');

--pregunta 9 parte ii
CREATE TABLE comentarios(id SERIAL PRIMARY KEY, fecha DATE, hora_creación TIME,contenido VARCHAR(500), post_id INT,FOREIGN KEY(post_id) REFERENCES post(id));
--pregunta 10 parte ii
INSERT INTO comentarios(fecha, hora_creación, contenido, post_id) VALUES('2020-06-19', '15:00' , 'comentario1',1),('2020-06-19', '16:00' , 'comentario2',2);

INSERT INTO comentarios(fecha, hora_creación, contenido, post_id) VALUES('2020-06-20', '16:00' , 'comentario carlos1',4), ('2020-06-20', '17:00' , 'comentario carlos2',4), ('2020-06-20', '18:00' , 'comentario carlos3',4), ('2020-06-20', '19:00' , 'comentario carlos4',4) ;

--pregunta 11 parte ii
INSERT INTO post(nombre_de_usuario, fecha_de_creacion, contenido, descripcion,titulo) VALUES ('Margarita', '2020-06-20','saludos','comunidad de ayuda','servicios');
--pregunta 12 parte ii
INSERT INTO comentarios(fecha, hora_creación, contenido, post_id) VALUES('2020-06-20', '16:00' , 'comentario margarita',7), ('2020-06-20', '13:00' , 'comentario margarita',7), ('2020-06-20', '18:00' , 'comentario margarita',7), ('2020-06-20', '19:00' , 'comentario margarita',7),('2020-06-20', '20:00' , 'comentario margarita',7) ;


