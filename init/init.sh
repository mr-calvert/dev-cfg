# wraps execution of an environment specific setup script to archive a runlog

echo "==> $1 init run `date '+%c'`" >> ~/.dev-cfg/current/runlogs/$1.log
source ~/.dev-cfg/current/init/$1 2>&1 |tee -a ~/.dev-cfg/current/runlogs/$1.log
