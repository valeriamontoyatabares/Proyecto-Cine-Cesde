USE CineDeCesde;
GO


CREATE VIEW Vista_DetalleVentas AS
SELECT 
    C.nombre AS Cliente,
    P.titulo AS Pelicula,
    S.nombre_sala AS Sala,
    F.fecha_hora AS Horario,
    T.precio_pagado
FROM Tiquetes T
INNER JOIN Clientes C ON T.id_cliente = C.id_cliente
INNER JOIN Funciones F ON T.id_funcion = F.id_funcion
INNER JOIN Peliculas P ON F.id_pelicula = P.id_pelicula
INNER JOIN Salas S ON F.id_sala = S.id_sala;
GO


CREATE PROCEDURE sp_BuscarTiquetesPorCliente
    @NombreCliente VARCHAR(100)
AS
BEGIN
    SELECT * FROM Vista_DetalleVentas 
    WHERE Cliente LIKE '%' + @NombreCliente + '%';
END;
GO

CREATE PROCEDURE sp_ObtenerIngresosPorPelicula
    @TituloPelicula VARCHAR(100),
    @TotalIngresos DECIMAL(10,2) OUTPUT
AS
BEGIN
    SELECT @TotalIngresos = SUM(precio_pagado)
    FROM Vista_DetalleVentas
    WHERE Pelicula = @TituloPelicula;
END;
GO

CREATE PROCEDURE sp_RegistrarNuevoCliente
    @Nombre VARCHAR(100),
    @Correo VARCHAR(100),
    @Telefono VARCHAR(20),
    @Mensaje VARCHAR(100) OUTPUT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Clientes WHERE correo = @Correo)
    BEGIN
        SET @Mensaje = 'Error: El correo ya está registrado.';
    END
    ELSE
    BEGIN
        INSERT INTO Clientes (nombre, correo, telefono)
        VALUES (@Nombre, @Correo, @Telefono);
        SET @Mensaje = 'Éxito: Cliente registrado correctamente.';
    END
END;
GO

SELECT TOP 5 
    P.titulo, 
    SUM(T.precio_pagado) AS Recaudacion_Total
FROM Tiquetes T
JOIN Funciones F ON T.id_funcion = F.id_funcion
JOIN Peliculas P ON F.id_pelicula = P.id_pelicula
GROUP BY P.titulo
ORDER BY Recaudacion_Total DESC;
GO

SELECT TOP 3
    C.nombre, 
    C.correo,
    SUM(T.precio_pagado) AS Total_Invertido
FROM Clientes C
JOIN Tiquetes T ON C.id_cliente = T.id_cliente
GROUP BY C.nombre, C.correo
ORDER BY Total_Invertido DESC;
GO

SELECT 
    G.nombre_genero, 
    AVG(F.precio_base) AS Precio_Promedio
FROM Generos G
JOIN Peliculas P ON G.id_genero = P.id_genero
JOIN Funciones F ON P.id_pelicula = F.id_pelicula
GROUP BY G.nombre_genero;
GO