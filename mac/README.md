# Mango Launcher para Mac

Esta es la primera versión del script de MangoLauncher, la cual lanza el cliente de RDSecure.

## Instalación

Descarga el archivo rdsMangoLauncherMac_1.0.0.zip y descomrímelo

```bash
unzip rdsMangoLauncherMac_1.0.0.zip
cd rdsMangoLauncherMac
```

## Primera configuración

Una vez descomprimida la aplicación es necesario actualizar la información del servidor HOB/RDSecure

### Por medio de la consola

### Usando el Startup Options Manager

dentro de la carpeta **rdsMangoLauncherMac** ejecuta

```bash
./startupOM.sh
```

1. Una vez abirta la aplicación, ve a la pestaña **WSP/HTTPS Proxies**
2. En la casilla **Usar los siguientes WSP(s)** selecciona {rds_server}
3. Da click en el **botón Editar**
4. Establece la dirección del servidor RDS/HOB **SIN HTTPS://** así como el puerto
5. Da clic en actualizar

![Proceso](docs/images/01.png)
