#!/bin/bash 
set -e 
echo "Running tests..." 
if [ ! -f index.html ]; then 
  echo "ERROR: index.html not found!" 
  exit 1 
fi 
if ! grep -q "КалашниковПРИ-О-231" index.html; then 
  echo "ERROR: content mismatch!" 
  exit 1 
fi 
echo "All tests passed." 
