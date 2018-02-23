#!/usr/bin/env bash

# make a directory for this version of the setup based on current time
dt=`date +"%FT%H%M%S"`
mkdir -p ~/.dev-cfg/$dt
cd ~/.dev-cfg/$dt

# download the current version of the configuration, link to it through ~/.dev-cfg/current
curl https://codeload.github.com/mr-calvert/dev-cfg/zip/master -O
unzip master
rm master

mkdir repo
mv dev-cfg-master/* repo/
rmdir dev-cfg-master

cd ~/.dev-cfg
rm -f current
ln -s $dt current

# make an archive diretory for runlogs
mkdir current/runlogs

# ensure an executable link to ~/.dev-cfg/current/repo/init/init.sh exists in ~/dev-cfg
# this enables the usage:
#   ~/.dev-cfg/init [subsystem to init]
rm -f init
chmod a+x current/repo/init/init.sh
ln -f -s current/repo/init/init.sh init.sh
chmod a+x init.sh

# make sure to leave ~/.dev-cfg/bootstrap.sh executable
chmod a+x bootstrap.sh
