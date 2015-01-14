#!/usr/bin/env fish

set -l color_1 '\033[0;32m'
set -l color_2 '\033[1;32m'
set -l color_no '\033[0m'

if test "$argv"
  for dir in brahma-*/
    if test "npm" = $argv[1] -a ! -f "$dir/package.json"
      continue
    end
    if test "bower" = $argv[1] -a ! -f "$dir/bower.json"
      continue
    end
    cd $dir
    echo -s -e "$color_1" "$dir" "\$ " "$color_2" "$argv" "$color_no"
    eval "$argv"
    cd ..
  end
end