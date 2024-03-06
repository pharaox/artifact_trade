#!/usr/bin/env bash

LOGFILE=debug.log

# Artifact events
echo "Artifact bought: $(grep -a "Artifact bought" $LOGFILE | wc -l)"
echo "Artifact destroyed: $(grep -a "Artifact destroyed" $LOGFILE | wc -l)"
echo "- by Aniconist ruler: $(grep -a "Artifact destroyed by Aniconist ruler" $LOGFILE | wc -l)"
echo
