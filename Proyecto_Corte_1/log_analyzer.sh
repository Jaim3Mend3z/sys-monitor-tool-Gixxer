#!/bin/bash
grep -i "error" /var/log/syslog | awk '{print $1, $2, $3, $6}'
