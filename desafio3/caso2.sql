
CREATE DATABASE colegio;
\c empresa
--creando tablas
CREATE TABLE departamentos(id_departamento SERIAL PRIMARY KEY, nombre VARCHAR(50));
CREATE TABLE profesores(id_profesor SERIAL PRIMARY KEY, nombre VARCHAR(50), id_departamento INT, FOREIGN KEY(id_departamento) REFERENCES departamentos(id_departamento);
CREATE TABLE alumnos(id_alumno SERIAL PRIMARY KEY, nombre VARCHAR(50), rut INT, id_curso INT);
CREATE TABLE pruebas(id_prueba SERIAL PRIMARY KEY, puntaje INT, id_alumno INT, FOREIGN KEY(id_alumno) REFERENCES alumnos(id_alumno),id_profesor INT, FOREIGN KEY(id_profesor) REFERENCES profesores(id_profesor));
CREATE TABLE cursos(id_curso SERIAL PRIMARY KEY, nombre VARCHAR(50), id_alumno INT, FOREIGN KEY(id_alumno) REFERENCES alumnos(id_alumno), id_profesor INT, FOREIGN KEY(id_profesor) REFERENCES) profesores(id_profesor);