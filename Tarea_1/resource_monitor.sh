#!/bin/bash

LOG_FILE="/var/log/system_stats.log"

echo "=== Monitoreo de Recursos ===" | tee -a $LOG_FILE
echo "Fecha: $(date)" | tee -a $LOG_FILE
echo "Uso de CPU y Memoria:" | tee -a $LOG_FILE
top -b -n1 | head -n 10 | tee -a $LOG_FILE
echo "" | tee -a $LOG_FILE
echo "Espacio en disco:" | tee -a $LOG_FILE
df -h | tee -a $LOG_FILE
echo "" | tee -a $LOG_FILE
echo "Uso de Red:" | tee -a $LOG_FILE
ifstat 1 1 | tee -a $LOG_FILE
