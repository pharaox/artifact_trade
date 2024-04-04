#!/usr/bin/env bash

LOGFILE=debug.log

# Artifact events
echo "AGOT Artifact bought: $(grep -a "AGOT Artifact bought" $LOGFILE | wc -l)"
echo "AGOT Artifact sold: $(grep -a "AGOT Artifact sold" $LOGFILE | wc -l)"
echo "AGOT Artifact created by merchant: $(grep -a "AGOT Artifact created by merchant" $LOGFILE | wc -l)"
echo "AGOT Artifact destroyed by merchant: $(grep -a "AGOT Artifact destroyed by merchant" $LOGFILE | wc -l)"
echo "AGOT added gold to merchant: $(grep -a "AGOT added gold to merchant" $LOGFILE | wc -l)"
echo
