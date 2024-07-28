#!/bin/bash

# Ruta del script
SCRIPT_PATH="/home/JJONK19/Escritorio/script.sh"

# Darle permisos al script
chmod 750 "$SCRIPT_PATH"

# Añadir la línea de cron job al archivo del cronjob
(crontab -l 2>/dev/null; echo "*/5 * * * * $SCRIPT_PATH") | crontab -

echo "Ruta añadida correctamente."
