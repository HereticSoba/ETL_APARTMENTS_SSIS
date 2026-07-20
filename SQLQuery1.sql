/*Creación y activación (use) la bd*/
CREATE DATABASE BD_AlturaInmuebles;
GO

USE BD_AlturaInmuebles;
GO

/*Creación de tabla Apartments */
CREATE TABLE Apartments (
    id BIGINT PRIMARY KEY,
    category VARCHAR(100),
    title VARCHAR(500),
    body VARCHAR(MAX),
    amenities VARCHAR(MAX),
    bathrooms DECIMAL(4,1),
    bedrooms INT,
    currency VARCHAR(20),
    fee VARCHAR(50),
    has_photo VARCHAR(20),
    pets_allowed VARCHAR(100),
    price DECIMAL(12,2),
    price_display VARCHAR(100),
    price_type VARCHAR(100),
    square_feet INT,
    address VARCHAR(500),
    cityname VARCHAR(150),
    state CHAR(2),
    latitude DECIMAL(10,6),
    longitude DECIMAL(10,6),
    source VARCHAR(100),
    time BIGINT
);

/*Creación de tabla ErroresCarga */
CREATE TABLE ErroresCarga(
    id BIGINT NULL,
    state NVARCHAR(2) NULL,
    MotivoError NVARCHAR(200) NOT NULL,
    FechaCarga DATETIME NOT NULL DEFAULT GETDATE()
);

/*Creación de tabla ErroresOrigen */
CREATE TABLE ErroresOrigen (
    ErrorCode INT,
    ErrorColumn INT,
    FechaCarga DATETIME NOT NULL DEFAULT GETDATE()
);

/*SIEMPRE EJECUTAR PRIMERO ESTOS ANTES DE CADA DESPLIEGUE DEL ETL EN VISUAL STUDIO, PARA NO DUPLICAR LOS DATOS.*/
TRUNCATE TABLE Apartments;
TRUNCATE TABLE ErroresCarga;
TRUNCATE TABLE ErroresOrigen;

/*VER EL TOTAL DE REGISTROS*/
SELECT COUNT(*) AS TotalApartments
FROM Apartments;

SELECT COUNT(*) AS TotalErroresCarga
FROM ErroresCarga;

SELECT COUNT(*) AS TotalErroresOrigen
FROM ErroresOrigen;

/*VER LAS 10 PRIMERAS FILAS*/
SELECT TOP 10 *
FROM Apartments;

SELECT TOP 10 *
FROM ErroresCarga;

SELECT TOP 10 *
FROM ErroresOrigen;


/*OBTENER INFORMACIÓN DE LA TABLA, PUEDEN CAMBIARLO POR:
- Apartments;
- ErroresCarga
- ErroresOrigen*/

sp_help Apartments;

