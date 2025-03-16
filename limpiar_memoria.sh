#!/bin/bash
echo "Liberando memoria caché..."
sudo sync && sudo sysctl -w vm.drop_caches=3
echo "Memoria liberada."
