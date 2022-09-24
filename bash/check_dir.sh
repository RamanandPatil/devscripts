#!/bin/bash

# How To Check If File or Directory Exists in Bash: https://devconnected.com/how-to-check-if-file-or-directory-exists-in-bash/
# Using argument expansion to capture all directories provided as arguments.
# Usage: check_dir /etc /var /temp

for DIRECTORY in ${@}
do
  if [[ ! -d $DIRECTORY ]]
  then
    echo "The directorY ${DIRECTORY} does not exist!"
  fi
done