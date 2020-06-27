CREATE DATABASE libros;
\c libros
CREATE TABLE autores(id_autor SERIAL PRIMARY KEY, nombre VARCHAR(70));
CREATE TABLE libros(id_libro INT PRIMARY KEY, nombre VARCHAR(70), id_autor INT, FOREIGN KEY (id_autor) REFERENCES autores(id_autor));
ALTER TABLE autores ADD id_autor INT;
ALTER TABLE autores ADD CONSTRAINT FKid_autor FOREIGN KEY (id_autor) REFERENCES autores(id_autor);
CREATE TABLE editoriales(id_editoria INT PRIMARY KEY, nombre VARCHAR(70), id_autor INT, FOREIGN KEY (id_autor) REFERENCES autores(id_autor), id_libro INT, FOREIGN KEY (id_libro) REFERENCES libros(id_libro));
CREATE TABLE lectores(id_lector SERIAL PRIMARY KEY, nombre VARCHAR(50), apellido1 VARCHAR(40), apellido2 VARCHAR(40), id_libro INT, FOREIGN KEY (id_libro) REFERENCES libros(id_libro));
CREATE TABLE lectores(id_lector SERIAL PRIMARY KEY, fecha DATE, id_libro INT, FOREIGN KEY (id_libro) REFERENCES devoluciones(id_devolucion SERIAL PRIMARY KEY, libro),id_lector INT, FOREIGN KEY (id_lector) REFERENCES lectores(id_lector));