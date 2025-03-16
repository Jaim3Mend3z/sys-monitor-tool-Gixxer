#!/bin/bash
echo "Introduce la dirección a hacer ping:"
read url
ping -c 4 $url
