#!/usr/bin/env bash

# Artifact events
echo "Artifact bought: $(grep -a "Artifact bought" debug.log | wc -l)"
echo "Artifact destroyed: $(grep -a "Artifact destroyed" debug.log | wc -l)"
echo "- by Aniconist ruler: $(grep -a "Artifact destroyed by Aniconist ruler" debug.log | wc -l)"
echo
