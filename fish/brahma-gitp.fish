#!/usr/bin/env fish

set -l color_1 '\033[0;36m'
set -l color_2 '\033[1;36m'
set -l color_no '\033[0m'
set -l fail 0

if test "$argv"
  for dir in brahma-*/
    cd $dir
    echo -s -e "$color_1" "$dir" "\$ " "$color_2" "git $argv" "$color_no"
    git $argv &
    cd ..
  end
end