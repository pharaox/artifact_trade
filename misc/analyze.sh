#!/usr/bin/env bash

LOGFILE=debug.log

# Artifact events
echo "Artifact bought: $(grep -a "Artifact bought," $LOGFILE | grep -v "AGOT" | wc -l)"
echo "- weaponsmith: $(grep -a "Artifact bought,.*weaponsmith" $LOGFILE| wc -l)"
echo "- armorer: $(grep -a "Artifact bought,.*armorer" $LOGFILE | wc -l)"
echo "- jeweler: $(grep -a "Artifact bought,.*jeweler" $LOGFILE | wc -l)"
echo "Artifact sold: $(grep -a "Artifact sold," $LOGFILE | grep -v "AGOT" | wc -l)"
echo "- peddler: $(grep -a "Artifact sold,.*peddler" $LOGFILE | wc -l)"
echo "Artifact destroyed: $(grep -a "Artifact destroyed," $LOGFILE | grep -v "AGOT" | wc -l)"
echo "- aniconist: $(grep -a "Artifact destroyed,.*aniconist: yes" $LOGFILE | wc -l)"
echo
echo "Visiting holding: $(grep -a "Visiting holding," $LOGFILE | wc -l)"
echo "Visiting holding to trade artifacts: $(grep -a "Visiting holding to trade artifacts," $LOGFILE | wc -l)"
echo
echo "Attempting artifact haggle: $(grep -a "Attempting artifact haggle" $LOGFILE | wc -l)"
echo "Selling artifact via outraged partner: $(grep -a "Selling artifact via outraged partner" $LOGFILE | wc -l)"
echo
echo "Creating artifact: $(grep -a "Creating artifact" $LOGFILE | wc -l)"
echo "Destroying artifact: $(grep -a "Destroying artifact" $LOGFILE | wc -l)"
echo
