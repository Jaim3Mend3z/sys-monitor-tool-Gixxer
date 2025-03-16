# Manual del Proyecto - Primer Corte

## Introducción
Este documento describe el funcionamiento, instalación y uso de los scripts desarrollados para la automatización de tareas en el proyecto del primer corte.

## Contenido del Repositorio
El repositorio contiene los siguientes archivos:

- `backup_manager.sh` - Script para realizar copias de seguridad.
- `limpiar_memoria.sh` - Script para liberar memoria.
- `log_analyzer.sh` - Script para analizar archivos de logs.
- `ping_test.sh` - Script para realizar pruebas de conectividad.
- `resource_monitor.sh` - Script para monitoreo de recursos del sistema.
- `README.md` - Documentación del proyecto.
- `LICENSE` - Licencia del proyecto.
- `resultado.txt` - Archivo de salida de algunos scripts.
- `Tarea_1.pdf` - Documento relacionado con el primer corte.

## Instalación
Para utilizar estos scripts, sigue los siguientes pasos:

1. Clonar el repositorio:
   ```bash
   git clone <URL_DEL_REPOSITORIO>
   cd mi_repositorio/Tarea_1
   ```
2. Dar permisos de ejecución a los scripts:
   ```bash
   chmod +x *.sh
   ```

## Uso de los Scripts

### 1. `backup_manager.sh`
Realiza una copia de seguridad de los archivos especificados en un directorio determinado.
Ejecutar con:
   ```bash
   ./backup_manager.sh
   ```

### 2. `limpiar_memoria.sh`
Limpia la memoria caché y la swap para optimizar el rendimiento del sistema.
Ejecutar con:
   ```bash
   ./limpiar_memoria.sh
   ```

### 3. `log_analyzer.sh`
Analiza los logs del sistema en busca de errores y advertencias.
Ejecutar con:
   ```bash
   ./log_analyzer.sh
   ```

### 4. `ping_test.sh`
Realiza pruebas de conectividad hacia una lista de direcciones IP o dominios.
Ejecutar con:
   ```bash
   ./ping_test.sh
   ```

### 5. `resource_monitor.sh`
Monitorea el uso de CPU, memoria y disco en el sistema.
Ejecutar con:
   ```bash
   ./resource_monitor.sh
   ```

## Automatización
Para automatizar la ejecución de estos scripts, se puede usar `cron` en Linux:
1. Editar el crontab con:
   ```bash
   crontab -e
   ```
2. Agregar las tareas programadas, por ejemplo:
   ```
   0 * * * * /home/user/mi_repositorio/Tarea_1/resource_monitor.sh >> /home/user/logs/monitor.log
   ```
   Esto ejecutará `resource_monitor.sh` cada hora y guardará la salida en un log.

## Solución de Problemas
- Si un script no se ejecuta, verificar permisos con:
  ```bash
  ls -l script.sh
  ```
  Y asegurarse de que tenga permisos de ejecución (`chmod +x script.sh`).
- Si `git status` no muestra cambios al agregar archivos, usar:
  ```bash
  git add -A
  ```
  Y luego hacer commit y push:
  ```bash
  git commit -m "Actualización de scripts"
  git push origin main
  ```

## Contribución
Si deseas contribuir al proyecto, clona el repositorio, crea una nueva rama y envía un pull request con tus cambios.

## Licencia
Este proyecto está licenciado bajo [MIT License](LICENSE).

---

_Última actualización: 16 de marzo de 2025_.

