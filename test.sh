#!/bin/bash 
set -e 
echo "Running tests..." 
if [ ! -f index.html ]; then 
  echo "ERROR: index.html not found!" 
  exit 1 
fi 
if ! grep -q "Приложение работает!" index.html; then 
  echo "ERROR: content mismatch!" 
  exit 1 
fi 
echo "All tests passed." 
