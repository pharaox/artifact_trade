#!/usr/bin/env bash

LOGFILE=debug.log

# Artifact events
echo "Artifact bought: $(grep -a "Artifact bought," $LOGFILE | grep -v "AGOT" | wc -l)"
echo "- weaponsmith: $(grep -a "Artifact sold,.*weaponsmith" $LOGFILE| wc -l)"
echo "- armorer: $(grep -a "Artifact sold,.*armorer" $LOGFILE | wc -l)"
echo "- jeweler: $(grep -a "Artifact sold,.*jeweler" $LOGFILE | wc -l)"
echo "Artifact sold: $(grep -a "Artifact sold," $LOGFILE | grep -v "AGOT" | wc -l)"
echo "- peddler: $(grep -a "Artifact sold,.*peddler" $LOGFILE | wc -l)"
echo "Artifact destroyed: $(grep -a "Artifact destroyed," $LOGFILE | grep -v "AGOT" | wc -l)"
echo "- aniconist: $(grep -a "Artifact destroyed,.*aniconist: yes" $LOGFILE | wc -l)"
echo
echo "Visiting holding: $(grep -a "Visiting holding," $LOGFILE | wc -l)"
echo "Visiting holding to trade artifacts: $(grep -a "Visiting holding to trade artifacts," $LOGFILE | wc -l)"
echo
