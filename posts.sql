--crear base de datos
CREATE DATABASE posts;
--pregunta 2 parte i
\c posts
CREATE TABLE posts(id SERIAL, nombre_de_usuario VARCHAR(70), fecha_de_creacion DATE, contenido VARCHAR(500), descripcion VARCHAR(500), PRIMARY KEY (id));
--pregunta 3 parte i
INSERT INTO posts(nombre_de_usuario, fecha_de_creacion, contenido, descripcion) VALUES ('Pamela', '2020-06-16','saludos','comunidad de foros de ayuda'),('Pamela', '2020-06-16','consultas','comunidad de ayuda'), ('Carlos', '2020-06-16', 'tutoriales', 'nuevos temas de la actualidad');
--pregunta 4 parte i
ALTER TABLE posts ADD titulo VARCHAR(50);
--pregunta 5 parte i
UPDATE posts SET titulo='otros', contenido= 'saludos' WHERE id=1;
UPDATE posts SET titulo='educacion', contenido= 'tutoriales' WHERE id=3;
UPDATE posts SET titulo='dudas', contenido= 'consultas' WHERE id=2;
--pregunta 6 parte i
INSERT INTO posts(id, nombre_de_usuario, fecha_de_creacion, contenido, descripcion,titulo) VALUES ('Pedro', '2020-06-17','salas','comunidad de foros de ayuda','nuevos'),('Pedro', '2020-06-18','musica','música de los 80','entretenimiento');
--pregunta 7 parte i
DELETE FROM posts WHERE nombre_de_usuario='Carlos';
--pregunta 8 parte i
INSERT INTO posts( nombre_de_usuario, fecha_de_creacion, contenido, descripcion,titulo) VALUES ('Carlos', '2020-06-18','juegos','nuevos juegos','entretenimiento');

--pregunta 9 parte ii
CREATE TABLE comentarios(id SERIAL PRIMARY KEY, fecha_y_hora TIMESTAMP, contenido VARCHAR(500), post_id INT,FOREIGN KEY(post_id) REFERENCES posts(id));
--pregunta 10 parte ii
INSERT INTO comentarios(fecha_y_hora, post_id) VALUES('2020-06-19 15:00' , 'comentario1',1),('2020-06-19 16:00' , 'comentario2',2);

INSERT INTO comentarios(fecha_y_hora, contenido, post_id) VALUES('2020-06-20 16:00' , 'comentario carlos1',6), ('2020-06-20', '17:00' , 'comentario carlos2',6), ('2020-06-20 18:00' , 'comentario carlos3',6), ('2020-06-20 19:00' , 'comentario carlos4',6) ;

--pregunta 11 parte ii
INSERT INTO posts(nombre_de_usuario, fecha_de_creacion, contenido, descripcion,titulo) VALUES ('Margarita', '2020-06-20','saludos','comunidad de ayuda','servicios');
--pregunta 12 parte ii
INSERT INTO comentarios(fecha_y_hora, contenido, post_id) VALUES('2020-06-20 16:00' , 'comentario margarita',7), ('2020-06-20 13:00' , 'comentario margarita',7), ('2020-06-20 18:00' , 'comentario margarita',7), ('2020-06-20 19:00' , 'comentario margarita',7),('2020-06-20 20:00' , 'comentario margarita',7) ;


