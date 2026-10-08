# mangoLauncher - RDS Client for Mac

Esta es una implementacón del cliente Jlaunch.

## Versiones soportadas

- **HOB RD VPN 2.2 en adelante**
- **RDSecure 2.5**, **RDSecure myCloud 1.0**

## Requisitos

- Java 21.0.7 +
- Conexión al servidor de HOB/RDSecure
- npm `npm install --save-dev standard-version`

## Instalación

Para los detalles de la [instalación en MAC](./mac/README.md)

## 🛠️ Guía de Commits (Conventional Commits)

Este proyecto utiliza `standard-version` para automatizar el Changelog y el control de versiones. Todos los commits deben seguir la estructura estándar.

### Formato General

```bash
git commit -m "<tipo>(<alcance>): <descripción corta en minúsculas>"
```

### Tipos permitidos

- `feat:` Nueva característica para el usuario (ej. `feat(json): agregar lectura de version.json`).
- `fix:` Corrección de un error o bug (ej. `fix(bash): solucionar ruta inválida`).
- `docs:` Cambios exclusivos en documentación (ej. `docs(readme): actualizar guía de uso`).
- `refactor:` Cambios en el código que no añaden funciones ni corrigen bugs (ej. `refactor(clean): limpiar variables muertas`).

### Commits con múltiples cambios (Línea de comandos)

Si necesitas agrupar varios cambios en un solo commit, usa múltiples banderas `-m`. El primer `-m` será el título principal y los siguientes el desglose:

```bash
git commit -m "feat(core): actualización general de componentes" \
           -m "- fix(abc): se corrigió el error en el módulo abc" \
           -m "- feat(xyz): se implementó la nueva lógica xyz"
```

## Implementación

Cuando hagas cambios en `launch.command` debes ejecutar el versionado

```bash
./generate-version.sh
```
