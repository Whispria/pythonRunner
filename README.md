# 🧾 Script - run.sh

Este script permite ejecutar cualquier archivo Python dentro de un entorno virtual automáticamente.  
Es útil para automatizaciones defensivas o pequeños proyectos.

---
## 🚀 ¿Cómo usarlo?

1. **Crea un entorno virtual si no lo tienes**:

```bash
python3 -m venv venv
```

2. **Ejecuta el script**:

```bash
./run.sh
```

3. **El script verificará si el entorno virtual venv/ existe**
   
- Si no existe, mostrará un mensaje y se detendrá.
- Si existe, te pedirá el nombre del script .py a ejecutar

```bash
🧾 Nombre del script Python a ejecutar (por ejemplo: script.py): pyscrap.py
```

4. Si el archivo .py no existe, también te avisará antes de continuar.

## 📦 Requisitos

- Python 3
- Haber creado previamente un entorno virtual con `python3 -m venv venv`
- El script .py debe estar en la misma carpeta

