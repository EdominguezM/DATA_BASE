
CREATE DATABASE empresa;
\c empresa
--creando tablas
CREATE TABLE trabajadores(id_trabajador SERIAL PRIMARY KEY, nombre VARCHAR(50), rut INT, direccion VARCHAR(50));
CREATE TABLE departamentos(id_departamento SERIAL PRIMARY KEY, nombre VARCHAR(40), id_trabajador INT, FOREIGN KEY(id_trabajador) REFERENCES trabajadores(id_trabajador));
CREATE TABLE liquidaciones(id_liquidacion SERIAL PRIMARY KEY, id_trabajador INT, FOREIGN KEY(id_trabajador) REFERENCES trabajadores(id_trabajador));
CREATE TABLE archivos(id_archivo SERIAL PRIMARY KEY, id_liquidacion INT, FOREIGN KEY(id_liquidacion) REFERENCES liquidaciones(id_liquidacion));