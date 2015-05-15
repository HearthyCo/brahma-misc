#!/usr/bin/env bash

for dir in *; do
  if [[ -d "$dir" ]]; then
    if [[ -f "$dir/package.json" ]]; then
      cd "$dir"
      (
        echo "--- Cleaning node_modules for $dir";
        rm -rf "node_modules" > /dev/null;
        npm install > /dev/null;
        echo "--- Done. $dir has a fresh node_modules";
      ) &
      cd ..
    fi
  fi
done
wait
