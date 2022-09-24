#!/bin/bash

# https://stackoverflow.com/a/30033822

function exists {
  echo "File name is $1,"
  if [[ $2 ]]; then
    echo "It is a directory."
    result=$([[ -d $1 ]])
  else
    echo "It is not a directory."
    result=$([[ -f $1 ]])
  fi
  echo $result
}