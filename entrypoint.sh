#!/bin/bash

TOKEN=$1
_FOLDER=$2
FOLDER=${_FOLDER:-root}
sed -i 's/\[root\]/'$FOLDER'/g' ./conf.yml
sed -i 's/\[refresh_token\]/'$TOKEN'/g' ./conf.yml
./alist
