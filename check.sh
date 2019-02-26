PROCESS=$1
PIDS=`ps -ef | grep python $PROCESS | grep -o '^[ ]*[0-9]*'`
if [ -z "$PIDS" ]; then
  echo "Process not running." 1>&2
  exit 1
else
  for PID in $PIDS; do
    echo $PID
  done
fi
