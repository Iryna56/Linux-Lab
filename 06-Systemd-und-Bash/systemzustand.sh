#!/bin/bash
echo "Mein Computer heißt: $(hostname)" >> /tmp/system-info.log
echo "Aktueller Speicherplatz:" >> /tmp/system-info.log
df -h >> /tmp/system-info.log
echo "Aktueller Benutzer: $(whoami)" >> /tmp/system-info.log
echo "##################################" >> /tmp/system-info.log
