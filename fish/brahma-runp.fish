#!/usr/bin/env fish

set -l color_1 '\033[0;32m'
set -l color_2 '\033[1;32m'
set -l color_no '\033[0m'

if test "$argv"
  for dir in brahma-*/
    cd $dir
    echo -s -e "$color_1" "$dir" "\$ " "$color_2" "$argv" "$color_no"
    eval "$argv" &
    cd ..
  end
end