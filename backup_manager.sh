#!/bin/bash

BACKUP_DIR="/backups"
SOURCE_DIR="$HOME/Documentos"
BACKUP_FILE="$BACKUP_DIR/backup_$(date +%F).tar.gz"

mkdir -p $BACKUP_DIR
tar -czvf $BACKUP_FILE $SOURCE_DIR

echo "Copia de seguridad creada en: $BACKUP_FILE"
