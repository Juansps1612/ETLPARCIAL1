# ETLPARCIAL1

## Descripción
Este proyecto implementa un pipeline **ETL (Extract, Transform, Load)** utilizando **PySpark** para procesar y limpiar datos de jugadores de la Copa Mundial de la FIFA, a partir del dataset **WorldCupPlayers.csv**.

El objetivo es:
- **Extraer** los datos crudos desde un archivo CSV.
- **Transformarlos** mediante limpieza y normalización.
- **Cargarlos** en un archivo CSV limpio y en una base de datos SQLite, listos para análisis o visualización.

---

## Estructura del Proyecto

ETLPARCIAL1/
├── Extract/
│ └── extractor.py
├── Transform/
│ └── transformer.py
├── Load/
│ └── loader.py
├── Config/
│ └── config.py
├── main.py
├── WorldCupPlayers.csv

## Uso del DataFrame
El archivo principal de datos es **WorldCupPlayers.csv**, que contiene información sobre jugadores que participaron en las Copas Mundiales.

### Columnas principales:
- `Year`: Año del mundial.
- `Team`: Equipo al que pertenece el jugador.
- `Coach`: Nombre del director técnico.
- `Player Name`: Nombre completo del jugador.
- `Position`: Posición en el campo (GK, DF, MF, FW).
- `Shirt Number`: Número de camiseta.
- `Club`: Club al que pertenecía durante el torneo.

## Ejecución del pipeline ETL
1. Ajusta las rutas de entrada y salida en **Config/config.py** si es necesario.
2. Descarga las configuraciones iniciales con bash setup.sh
3. Ejecuta el flujo ETL desde el script principal python main.py

Esto ejecutará las siguientes fases:

Extract: Lee el dataset original con PySpark.

Transform: Limpia datos nulos y normaliza columnas.

Load:

- Genera un archivo CSV limpio: WorldCupPlayers_clean.csv.

- Inserta los datos en una base SQLite: WorldCupPlayers.db.

## Fuente de datos

Dataset original: FIFA World Cup Players Dataset

## Requisitos

Instala las dependencias con pip install -r requirements.txt

## Notas

- El proyecto utiliza PySpark como motor de procesamiento distribuido.

- Incluye configuración para integración con SQLite (fácil de reemplazar por PostgreSQL, MySQL u otro motor).
