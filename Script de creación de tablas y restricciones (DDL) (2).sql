CREATE DATABASE CineDeCesde;
USE CineDeCesde;


CREATE TABLE ClasificacionEdad (
    codigo VARCHAR(10) PRIMARY KEY,
    descripcion VARCHAR(50) NOT NULL
);

CREATE TABLE Generos (
    id_genero INT PRIMARY KEY,
    nombre_genero VARCHAR(50) NOT NULL
);

CREATE TABLE Salas (
    id_sala INT IDENTITY(1,1) PRIMARY KEY,
    nombre_sala VARCHAR(50) NOT NULL,
    capacidad_asientos INT NOT NULL
);

CREATE TABLE Clientes (
    id_cliente INT IDENTITY(1,1) PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    correo VARCHAR(100),
    telefono VARCHAR(20)
);


CREATE TABLE Peliculas (
    id_pelicula INT IDENTITY(1,1) PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    duracion_minutos INT,
    id_clasificacion VARCHAR(10) REFERENCES ClasificacionEdad(codigo),
    id_genero INT REFERENCES Generos(id_genero)
);

CREATE TABLE Funciones (
    id_funcion INT IDENTITY(1,1) PRIMARY KEY,
    id_pelicula INT REFERENCES Peliculas(id_pelicula),
    id_sala INT REFERENCES Salas(id_sala),
    fecha_hora DATETIME NOT NULL,
    precio_base DECIMAL(10,2) NOT NULL
);

CREATE TABLE Tiquetes (
    id_tiquete INT IDENTITY(1,1) PRIMARY KEY,
    id_cliente INT REFERENCES Clientes(id_cliente),
    id_funcion INT REFERENCES Funciones(id_funcion),
    asiento_asignado VARCHAR(10) NOT NULL,
    precio_pagado DECIMAL(10,2)
);

