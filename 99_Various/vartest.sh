#!/bin/bash
# Übergabe Parameter auslesen und ausgeben
echo Das script wurde mit $0 gestartet.
echo Sie haben $# Parameter übergeben.
echo Der erste Übergabewert war $1.
echo Der zweite Übergabewert war $2.
Murks
echo Der aktuelle Errorlevel ist $?.
exit 0