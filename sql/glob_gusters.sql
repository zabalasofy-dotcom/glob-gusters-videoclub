-- Base de Datos Relacional Glob-Gusters Video-Club
-- Autor: Allison Sofia Zabala Serrano
-- Fecha: 2024-09-15

-- Creación de la base de datos
CREATE DATABASE IF NOT EXISTS `glob_gusters` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `glob_gusters`;

-- Eliminación de la base de datos
-- DROP DATABASE IF EXISTS `glob_gusters`;

CREATE TABLE Actor(
    ID INTEGER PRIMARY KEY;
    Nacionalidad_ID INTEGER Foreign Key;
    Nombre VARCHAR;
    Sexo CHAR;
)

CREATE TABLE Cliente(
    DNI INTEGER PRIMARY KEY;
    Cliente_DNI INTEGER Foreign Key;
    Nombre VARCHAR;
    Direccion VARCHAR;
    Telefono VARCHAR;
)

CREATE TABLE Nacionalidad(
   ID INTEGER PRIMARY KEY;
   Nombre VARCHAR;
)

CREATE TABLE Reparto(
   Actor_ID INTEGER Foreign Key;
   Pelicula_ID INTEGER Foreign Key;
   Rol INTEGER;
)

CREATE TABLE Renta(
   Numero INTEGER PRIMARY KEY;
   Cliente_DNI INTEGER Foreign Key;
   Inicia DATE;
   Finaliza DATE;
)

CREATE TABLE Ejemplar_Renta(
    Ejemplar_Numero INTEGER Foreign Key;
    Renta_Numero INTEGER Foreign Key;
    Entrega DATE;
)

CREATE TABLE Reparto(
    ID INTEGER PRIMARY KEY;
    Nacionalidad_ID INTEGER Foreign Key;
    Nombre VARCHAR;
)

CREATE TABLE Director(
    ID INTEGER PRIMARY KEY;
    Nacionalidad_ID INTEGER Foreign Key;
    Nombre VARCHAR;
)

CREATE TABLE Pelicula(
    ID INTEGER PRIMARY KEY;
    Productora_ID INTEGER Foreign Key;
    Titulo VARCHAR;
    Director_ID INTEGER Foreign Key;
    Fecha DATE;
)

CREATE TABLE Ejemplar(
   Numero INTEGER PRIMARY KEY;
   Estado_ID INTEGER Foreign Key;
   Pelicula_ID INTEGER Foreign Key;
)

CREATE TABLE Estado(
   ID INTEGER PRIMARY KEY;
    Nombre VARCHAR;
)

CREATE TABLE Productora(
   ID INTEGER PRIMARY KEY;
   Nombre VARCHAR;
)
