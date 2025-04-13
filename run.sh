#!/bin/bash

# 📦 Ruta al entorno virtual
VENV_DIR="venv"

# 🛡 Verifica si el entorno existe
if [ ! -d "$VENV_DIR" ]; then
  echo "❌ No se encontró el entorno virtual en $VENV_DIR"
  echo "💡 Usa: python3 -m venv venv"
  exit 1
fi

# 📄 Pedir al usuario el nombre del script
read -p "🧾 Nombre del script Python a ejecutar (por ejemplo: script.py): " SCRIPT

# 🔍 Comprobar que el archivo existe
if [ ! -f "$SCRIPT" ]; then
  echo "❌ El archivo '$SCRIPT' no existe en este directorio."
  exit 1
fi

# 🔗 Activar entorno
source "$VENV_DIR/bin/activate"

# 🚀 Ejecutar el script
echo "🔧 Ejecutando '$SCRIPT' en entorno virtual..."
python3 "$SCRIPT"

# 🔚 Salir del entorno virtual
deactivate
