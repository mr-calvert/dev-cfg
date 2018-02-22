#!/usr/bin/env bash

dt=`date +"%FT%H%M%S"`
mkdir -p ~/.dev-cfg/$dt
cd ~/.dev-cfg/$dt

curl https://codeload.github.com/mr-calvert/dev-cfg/zip/master -O
unzip master
rm master

mkdir repo
mv dev-cfg-master/* repo/
rmdir dev-cfg-master

rm -f current
ln -s $dt current
