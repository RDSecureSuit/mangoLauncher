#!/bin/bash
# Obtener versión de Git en tu máquina
VERSION=$(git describe --tags --always 2>/dev/null || echo "v0.0.0-build")

# Reemplazar el placeholder y generar el archivo final para el cliente
sed "s/##VERSION_PLACEHOLDER##/$VERSION/g" mac/launch.src.command > mac/launch.command
chmod +x mac/launch.command
echo "¡Listo! El archivo 'mac/launch.command' tiene la versión $VERSION y está preparado para el cliente."