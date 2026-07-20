# ETL Apartments - SQL Server Integration Services (SSIS)

## Descripción

Proyecto ETL desarrollado con SQL Server Integration Services (SSIS) para cargar, transformar y validar información de un conjunto de datos de apartamentos en renta.

El proceso extrae los datos desde el archivo CSV, realiza conversiones de tipos de datos, valida los registros y los almacena en SQL Server.

---

## Tecnologías utilizadas

- SQL Server
- SQL Server Integration Services (SSIS)
- SQL Server Management Studio (SSMS)
- Visual Studio 2022
- Archivo CSV

---

## Flujo ETL

1. Lectura del archivo CSV.
2. Conversión de tipos de datos.
3. Validación mediante División Condicional.
4. Carga de registros válidos en la tabla **Apartments**.
5. Registro de datos inválidos en la tabla **ErroresCarga**.
6. Registro de errores de lectura y conversión en **ErroresOrigen**.

---

## Base de datos

Se utilizan las siguientes tablas:

### Apartments

Almacena los registros válidos provenientes del archivo CSV.

### ErroresCarga

Almacena los registros que no cumplen las reglas de validación.

Ejemplo:
- Código de estado (`state`) inválido.

### ErroresOrigen

Almacena errores detectados durante la lectura o conversión del archivo.

Campos:

- ErrorCode
- ErrorColumn
- FechaCarga
