# 🏢 ETL Apartments - SQL Server Integration Services (SSIS)

## Descripción

Proyecto ETL desarrollado con **SQL Server Integration Services (SSIS)** para extraer, transformar, validar y cargar información de un conjunto de datos de apartamentos en renta hacia una base de datos en **SQL Server**.

El proceso automatiza la carga de datos desde un archivo CSV, aplica reglas de validación mediante **División Condicional (Conditional Split)** y registra tanto los datos válidos como los errores detectados durante la ejecución.

---

## 🚀 Características

- Importación de datos desde un archivo CSV.
- Conversión de tipos de datos.
- Validación de registros mediante **División Condicional**.
- Carga de registros válidos en SQL Server.
- Registro de datos inválidos para su revisión.
- Captura de errores de lectura y conversión.

---

## 🛠️ Tecnologías utilizadas

- SQL Server
- SQL Server Integration Services (SSIS)
- SQL Server Management Studio (SSMS)
- Visual Studio 2022
- Archivo CSV

---

## 🔄 Flujo ETL

```text
              Archivo CSV
                   │
                   ▼
          Conversión de datos
                   │
                   ▼
           División Condicional
     ┌─────────────┴─────────────┐
     ▼                           ▼
Registros válidos      Registros inválidos
     ▼                           ▼
 Apartments                ErroresCarga
     │
     ▼
Errores de origen
ErroresOrigen
```

---

## 🗄️ Base de datos

El proyecto utiliza las siguientes tablas:

### 📋 Apartments

Almacena los registros que cumplen con todas las reglas de validación y son cargados correctamente en la base de datos.

### ⚠️ ErroresCarga

Almacena los registros que no cumplen las reglas de validación definidas en el proceso ETL.

**Ejemplo:**

- Código de estado (`state`) inválido.

### ❌ ErroresOrigen

Registra los errores detectados durante la lectura del archivo o la conversión de datos.

**Campos principales:**

- ErrorCode
- ErrorColumn
- FechaCarga

---

## ▶️ Ejecución del proyecto

1. Abrir la solución en **Visual Studio 2022**.
2. Restaurar la base de datos correspondiente en **SQL Server**.
3. Configurar la conexión al servidor si es necesario.
4. Ejecutar el paquete SSIS.
5. Verificar la información cargada en las tablas:
   - `Apartments`
   - `ErroresCarga`
   - `ErroresOrigen`

---

## 👨‍💻 Autor

Desarrollado por **HereticSoba**.
