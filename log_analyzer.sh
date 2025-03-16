#!/bin/bash

LOG_FILE="/var/log/syslog"
ERRORS_FOUND=$(grep -i "error" $LOG_FILE)

if [ -n "$ERRORS_FOUND" ]; then
    echo "Errores encontrados:"
    echo "$ERRORS_FOUND"
else
    echo "No se encontraron errores."
fi
