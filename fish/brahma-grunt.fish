#!/usr/bin/env fish

set -l color_1 '\033[0;33m'
set -l color_2 '\033[1;33m'
set -l color_no '\033[0m'

# This should be in dependency order, even if duplication is needed
set -l tasks css components client

for task in $tasks
  cd "brahma-$task"
  echo -s -e "$color_1" "brahma-$task" "\$ " "$color_2" "grunt $argv" "$color_no"
  grunt $argv
  cd ..
end