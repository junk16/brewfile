#!/bin/bash
#
if [[ -f ./Brewfile ]]; then
  rm ./Brewfile
fi

brew bundle dump

# mas list | awk '{
#   id = $1;
#   sub(/^[0-9]+[ \t]+/, "");       # Remove the leading ID and whitespace
#   sub(/[ \t]+\([0-9.]+\)$/, "");  # Remove the version in parentheses at the end
#   print "mas \"" $0 "\", id: " id;
# }' >>Brewfile
