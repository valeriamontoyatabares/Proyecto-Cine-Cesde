USE CineDeCesde;

INSERT INTO ClasificacionEdad (codigo, descripcion) VALUES 
('ATP', 'Todo público'),
('R12', '+12 años'),
('R15', '+15 años'),
('R18', 'Adultos');


INSERT INTO Generos (id_genero, nombre_genero) VALUES 
(1, 'Acción'),
(2, 'Comedia'),
(3, 'Ciencia Ficción'),
(4, 'Drama'),
(5, 'Animación'),
(6, 'Terror');

INSERT INTO Salas (nombre_sala, capacidad_asientos) VALUES 
('Sala 1', 50),
('Sala 2', 50),
('Sala 3', 60),
('Sala 4', 40),
('Sala 5', 80);




INSERT INTO Clientes (nombre, correo, telefono) VALUES 
('Alejandro Gomez', 'alejandro@email.com', '3001000001'),
('Beatriz Henao', 'beatriz@email.com', '3001000002'),
('Carlos Zapata', 'carlos@email.com', '3001000003'),
('Diana Restrepo', 'diana@email.com', '3001000004'),
('Eduardo Montoya', 'eduardo@email.com', '3001000005'),
('Fernanda Lopez', 'fernanda@email.com', '3001000006'),
('Gabriel Pineda', 'gabriel@email.com', '3001000007'),
('Helena Velez', 'helena@email.com', '3001000008'),
('Ivan Duque', 'ivan@email.com', '3001000009'),
('Juana Arias', 'juana@email.com', '3001000010'),
('Kevin Londoño', 'kevin@email.com', '3001000011'),
('Laura Urrea', 'laura@email.com', '3001000012'),
('Manuel Cano', 'manuel@email.com', '3001000013'),
('Natalia Ossa', 'natalia@email.com', '3001000014'),
('Oscar Franco', 'oscar@email.com', '3001000015'),
('Paula Marin', 'paula@email.com', '3001000016'),
('Quentin Tarento', 'quentin@email.com', '3001000017'),
('Rosa Jimenez', 'rosa@email.com', '3001000018'),
('Samuel Echavarria', 'samuel@email.com', '3001000019'),
('Tatiana Ruiz', 'tatiana@email.com', '3001000020'),
('Ulises Gaviria', 'ulises@email.com', '3001000021'),
('Viviana Cardona', 'viviana@email.com', '3001000022'),
('Walter White', 'walter@email.com', '3001000023'),
('Ximena Duque', 'ximena@email.com', '3001000024'),
('Yeferson Cossio', 'yeferson@email.com', '3001000025'),
('Zaira Ramirez', 'zaira@email.com', '3001000026'),
('Alberto Mero', 'alberto@email.com', '3001000027'),
('Brenda Villa', 'brenda@email.com', '3001000028'),
('Cesar Mejia', 'cesar@email.com', '3001000029'),
('Daniela Toro', 'daniela@email.com', '3001000030'),
('Esteban Quito', 'esteban@email.com', '3001000031'),
('Fabiola Posada', 'fabiola@email.com', '3001000032'),
('Gerardo Parra', 'gerardo@email.com', '3001000033'),
('Hilda Castro', 'hilda@email.com', '3001000034'),
('Ignacio Higuita', 'ignacio@email.com', '3001000035'),
('Jenny Usme', 'jenny@email.com', '3001000036'),
('Jorge Valdivia', 'jorge@email.com', '3001000037'),
('Karen Sevillano', 'karen@email.com', '3001000038'),
('Luis Miguel', 'luism@email.com', '3001000039'),
('Maria Clara', 'mariac@email.com', '3001000040'),
('Nicolas Bedoya', 'nicolas@email.com', '3001000041'),
('Olga Tañon', 'olga@email.com', '3001000042'),
('Pedro Infante', 'pedro@email.com', '3001000043'),
('Queila Rios', 'queila@email.com', '3001000044'),
('Ricardo Arjona', 'ricardo@email.com', '3001000045'),
('Sandra Bullock', 'sandra@email.com', '3001000046'),
('Tomas Gonzalez', 'tomas@email.com', '3001000047'),
('Ursula Corbero', 'ursula@email.com', '3001000048'),
('Victor Hugo', 'victorh@email.com', '3001000049'),
('Wendy Sulca', 'wendy@email.com', '3001000050'),
('Xavier Lopez', 'xavier@email.com', '3001000051'),
('Yolanda Saldivar', 'yolanda@email.com', '3001000052'),
('Zac Efron', 'zac@email.com', '3001000053'),
('Ana Maria', 'anam@email.com', '3001000054'),
('Carlos Vives', 'carlosv@email.com', '3001000055'),
('Dua Lipa', 'dua@email.com', '3001000056'),
('Ed Sheeran', 'ed@email.com', '3001000057'),
('Fanny Lu', 'fanny@email.com', '3001000058'),
('Gustavo Cerati', 'gustavo@email.com', '3001000059'),
('Harry Styles', 'harry@email.com', '3001000060');

INSERT INTO Peliculas (titulo, duracion_minutos, id_clasificacion, id_genero) VALUES 
('Interestelar', 169, 'R12', 3),
('Toy Story', 81, 'ATP', 5),
('Joker', 122, 'R18', 4),
('Gladiador', 155, 'R15', 1),
('Shrek', 90, 'ATP', 5),
('Matrix', 136, 'R12', 3),
('El Exorcista', 122, 'R18', 6),
('Superbad', 113, 'R15', 2),
('Logan', 137, 'R18', 1),
('Buscando a Nemo', 100, 'ATP', 5),
('Mad Max: Fury Road', 120, 'R18', 1),
('Forrest Gump', 142, 'ATP', 4),
('Wall-E', 98, 'ATP', 5),
('Alien', 117, 'R18', 6),
('La La Land', 128, 'R12', 4),
('Inception', 148, 'R12', 3),
('Deadpool', 108, 'R18', 1),
('Coco', 105, 'ATP', 5),
('El Padrino', 175, 'R18', 4),
('Volver al Futuro', 116, 'ATP', 3);

INSERT INTO Funciones (id_pelicula, id_sala, fecha_hora, precio_base) VALUES 
(1, 1, '2026-06-25 14:00', 15000.00),
(2, 2, '2026-06-25 16:00', 15000.00),
(3, 1, '2026-06-25 18:00', 18000.00),
(4, 2, '2026-06-25 20:00', 18000.00),
(5, 1, '2026-06-26 14:00', 12000.00),
(6, 2, '2026-06-26 16:00', 15000.00),
(7, 1, '2026-06-26 18:00', 20000.00),
(8, 2, '2026-06-26 20:00', 15000.00),
(9, 1, '2026-06-27 14:00', 20000.00),
(10, 2, '2026-06-27 16:00', 12000.00),
(11, 1, '2026-06-27 18:00', 20000.00),
(12, 2, '2026-06-27 20:00', 15000.00),
(13, 1, '2026-06-28 14:00', 12000.00),
(14, 2, '2026-06-28 16:00', 20000.00),
(15, 1, '2026-06-28 18:00', 18000.00),
(16, 2, '2026-06-28 20:00', 15000.00),
(17, 1, '2026-06-29 14:00', 20000.00),
(18, 2, '2026-06-29 16:00', 12000.00),
(19, 1, '2026-06-29 18:00', 20000.00),
(20, 2, '2026-06-29 20:00', 15000.00);


INSERT INTO Tiquetes (id_cliente, id_funcion, asiento_asignado, precio_pagado) VALUES 
(1, 1, 'A1', 15000.00),
(2, 2, 'A2', 15000.00),
(3, 3, 'A3', 18000.00),
(4, 4, 'A4', 18000.00),
(5, 5, 'A5', 12000.00),
(6, 6, 'A6', 15000.00),
(7, 7, 'A7', 20000.00),
(8, 8, 'A8', 15000.00),
(9, 9, 'A9', 20000.00),
(10, 10, 'A10', 12000.00),
(11, 11, 'B1', 20000.00),
(12, 12, 'B2', 15000.00),
(13, 13, 'B3', 12000.00),
(14, 14, 'B4', 20000.00),
(15, 15, 'B5', 18000.00),
(16, 16, 'B6', 15000.00),
(17, 17, 'B7', 20000.00),
(18, 18, 'B8', 12000.00),
(19, 19, 'B9', 20000.00),
(20, 20, 'B10', 15000.00),
(21, 1, 'C1', 15000.00),
(22, 2, 'C2', 15000.00),
(23, 3, 'C3', 18000.00),
(24, 4, 'C4', 18000.00),
(25, 5, 'C5', 12000.00),
(26, 6, 'C6', 15000.00),
(27, 7, 'C7', 20000.00),
(28, 8, 'C8', 15000.00),
(29, 9, 'C9', 20000.00),
(30, 10, 'C10', 12000.00),
(31, 11, 'D1', 20000.00),
(32, 12, 'D2', 15000.00),
(33, 13, 'D3', 12000.00),
(34, 14, 'D4', 20000.00),
(35, 15, 'D5', 18000.00),
(36, 16, 'D6', 15000.00),
(37, 17, 'D7', 20000.00),
(38, 18, 'D8', 12000.00),
(39, 19, 'D9', 20000.00),
(40, 20, 'D10', 15000.00),
(41, 1, 'E1', 15000.00),
(42, 2, 'E2', 15000.00),
(43, 3, 'E3', 18000.00),
(44, 4, 'E4', 18000.00),
(45, 5, 'E5', 12000.00),
(46, 6, 'E6', 15000.00),
(47, 7, 'E7', 20000.00),
(48, 8, 'E8', 15000.00),
(49, 9, 'E9', 20000.00),
(50, 10, 'E10', 12000.00),
(51, 11, 'F1', 20000.00),
(52, 12, 'F2', 15000.00),
(53, 13, 'F3', 12000.00),
(54, 14, 'F4', 20000.00),
(55, 15, 'F5', 18000.00),
(56, 16, 'F6', 15000.00),
(57, 17, 'F7', 20000.00),
(58, 18, 'F8', 12000.00),
(59, 19, 'F9', 20000.00),
(60, 20, 'F10', 15000.00);


SELECT * FROM ClasificacionEdad;

SELECT * FROM Generos;

SELECT * FROM Salas;

SELECT * FROM Clientes;

SELECT * FROM Peliculas;

SELECT * FROM Funciones;

SELECT * FROM Tiquetes;

UPDATE Funciones
SET precio_base = 25000.00
WHERE id_funcion = 1;

UPDATE Clientes
SET correo = 'nuevo_correo@mail.com'
WHERE id_cliente = 1;

DELETE FROM Tiquetes
WHERE id_tiquete = 60;