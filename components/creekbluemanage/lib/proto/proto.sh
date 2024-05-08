#!/bin/bash
# create by tian
#  请在终端执行
root_dir=$(pwd)
cd $root_dir
for fliename in $(ls *.proto)
do
  echo "protoc --data_out=. "$fliename""
  $(protoc --dart_out=. "$fliename")
done

