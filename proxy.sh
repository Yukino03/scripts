#!/bin/sh
if [ $# -ne 1 ]; then
  echo "Invalid argument."
  exit 1
fi 
if [ $1 = "on" ]; then
  export http_proxy="10.1.10.18:3128"
  export https_proxy="10.1.10.18:3128"
  echo "proxy turn on"
  elif [ $1 = "off" ]; then
  export http_proxy=""
  export https_proxy=""
  echo "proxy turn off."
  else
  echo "Invalid argument."
  exit 1
fi
echo "Applied proxy."
