#!/bin/bash

echo "=== MONITOR DE RECURSOS ==="
echo "CPU: $(top -bn1 | grep load | awk '{printf "%.2f%%\n", $(NF-2)}')"
echo "Memoria libre: $(free -m | awk '/Mem:/ {print $4 " MB"}')"
echo "Uso de disco: $(df -h / | awk '/\// {print $5}')"
