#!/bin/bash

echo "🚀 Iniciando configuración del entorno..."

# Crear venv si no existe
if [ ! -d "venv" ]; then
    echo "📦 Creando entorno virtual..."
    python3 -m venv venv
fi

# Activar entorno virtual
source venv/bin/activate

# Instalar dependencias
echo "📥 Instalando dependencias de requirements.txt..."
pip install --upgrade pip
pip install -r requirements.txt

# Descargar SQLite JDBC si no existe
if [ ! -f "sqlite-jdbc-3.36.0.3.jar" ]; then
    echo "⬇️ Descargando sqlite-jdbc..."
    curl -L -o sqlite-jdbc-3.36.0.3.jar https://repo1.maven.org/maven2/org/xerial/sqlite-jdbc/3.36.0.3/sqlite-jdbc-3.36.0.3.jar
fi

echo "✅ Entorno listo. Ejecuta: python main.py"
venv/bin/python ./main.py
