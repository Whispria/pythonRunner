#!/bin/bash

# 📦 Ruta al entorno virtual
VENV_DIR="venv"

# 🛡️ Verificar si el entorno virtual existe
if [ ! -d "$VENV_DIR" ]; then
  echo "❌ No se encontró el entorno virtual en '$VENV_DIR'."
  echo "💡 Crea uno con: python3 -m venv venv"
  exit 1
fi

# 🔗 Activar entorno virtual
source "$VENV_DIR/bin/activate"

# 📄 Pedir el nombre del script Python
read -p "🧾 Nombre del script Python a ejecutar (por ejemplo: script.py): " SCRIPT

# 🔍 Verificar que el archivo existe
if [ ! -f "$SCRIPT" ]; then
  echo "❌ El archivo '$SCRIPT' no existe en este directorio."
  deactivate
  exit 1
fi

# 🚀 Ejecutar el script
echo "🚀 Ejecutando '$SCRIPT' en entorno virtual..."
python3 "$SCRIPT"

# 🔚 Desactivar entorno
deactivate
