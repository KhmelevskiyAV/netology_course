#!/bin/bash
logfile="path/to/logfile.log"
   # Check load average
loadavg1=`grep "loadavg1" $logfile | awk '{print $2}'`
if [ $(echo $loadavg1'<'1 | bc) -eq 1 ]; then
  echo "Load average is too high."
else
  echo "Load average is OK."
fi
    # Check memory usage
memfree=`grep "memfree" $logfile | awk '{print $2}'`
memtotal=`grep "memtotal" $logfile | awk '{print $2}'`
if [ $(echo $memfree/$memtotal'<'0.6 | bc) -eq 1 ]; then
  echo "Memory usage is too high."
else
  echo "Memory usage is OK."
fi
    # Check disk usage
diskfree=`grep "diskfree" $logfile | awk '{print $2}'`
disktotal=`grep "disktotal" $logfile | awk '{print $2}'`
if [ $(echo $diskfree/$disktotal'<'0.6 | bc) -eq 1 ]; then
  echo "Disk usage is too high."
else
  echo "Disk usage is OK."
fi
