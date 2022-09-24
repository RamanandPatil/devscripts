#!/bin/bash

# Using argument expansion to capture all files provided as arguments.
# Usage: check_file /etc/passwd /etc/pass /etc/file

for FILE in ${@}
do
  if [[ ! -f $FILE ]]
  then
    echo "The file ${FILE} does not exist!"
  fi
done