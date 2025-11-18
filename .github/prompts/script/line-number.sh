#!/bin/bash

# Print file name and annotated line numbers
for file in "$@"; do
  echo "---- $file ----"
  nl -ba "$file"
done
